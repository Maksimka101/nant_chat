import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nant_client/bloc/edit_user_bloc/edit_user_bloc.dart';
import 'package:nant_client/models/user/user.dart';
import 'package:nant_client/repository/user_repository/user_repository.dart';
import 'package:nant_client/utils/extensions/object.dart';

part 'user_bloc.freezed.dart';

@freezed
class UserBlocEvent with _$UserBlocEvent {
  /// Initialize [UserBloc] by subscribe on [UserRepository]
  const factory UserBlocEvent.initialize() = Initialize;

  const factory UserBlocEvent.userLoaded(User? user) = UserLoadedEvent;
}

@freezed
class UserBlocState with _$UserBlocState {
  const factory UserBlocState.initial() = Initial;

  /// Whenever [User] is loaded and authorized
  const factory UserBlocState.authorized(User user) = Authorized;

  const factory UserBlocState.unAuthorized() = UnAuthorized;
}

/// This bloc is used to get user
/// To work with user use [EditUserBloc]
class UserBloc extends Bloc<UserBlocEvent, UserBlocState> {
  UserBloc({required this.userRepository}) : super(const Initial());

  final UserRepository userRepository;
  StreamSubscription<User?>? _userSubscription;

  @override
  Stream<UserBlocState> mapEventToState(UserBlocEvent event) async* {
    yield* event.map(
      userLoaded: _onUserLoadedEvent,
      initialize: _mapInitializeToState,
    );
  }

  Stream<UserBlocState> _onUserLoadedEvent(UserLoadedEvent event) async* {
    yield event.user.fold(some: (a) => Authorized(a!), none: () => const UnAuthorized());
  }

  Stream<UserBlocState> _mapInitializeToState(Initialize event) async* {
    await _userSubscription?.cancel();
    _userSubscription = userRepository.dataStream.listen((event) {
      add(UserLoadedEvent(event));
    });
  }

  @override
  Future<void> close() async {
    await _userSubscription?.cancel();
    return super.close();
  }
}
