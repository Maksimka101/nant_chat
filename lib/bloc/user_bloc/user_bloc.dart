import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nant_client/bloc/edit_user_bloc/edit_user_bloc.dart';
import 'package:nant_client/models/user/user.dart';
import 'package:nant_client/repository/user_repository/user_repository.dart';
import 'package:nant_client/utils/logger/logger.dart';

part 'user_bloc.freezed.dart';

@freezed
abstract class UserBlocEvent with _$UserBlocEvent {
  const factory UserBlocEvent.loadUserStarted() = LoadUserStarted;

  const factory UserBlocEvent.userLoaded(@nullable User user) = UserLoadedEvent;
}

@freezed
abstract class UserBlocState with _$UserBlocState {
  const factory UserBlocState.initial() = Initial;

  const factory UserBlocState.loaded(User user) = Loaded;

  const factory UserBlocState.unAuthorized() = UnAuthrized;
}

/// This bloc is used to get user
/// To work with user use [EditUserBloc]
class UserBloc extends Bloc<UserBlocEvent, UserBlocState> {
  UserBloc({@required this.userRepository}) : super(const Initial());

  final UserRepository userRepository;
  StreamSubscription<User> _userSubscription;

  @override
  Stream<UserBlocState> mapEventToState(UserBlocEvent event) async* {
    yield* event.map(
      userLoaded: _onUserLoadedEvent,
      loadUserStarted: _onLoadUserEvent,
    );
  }

  Stream<UserBlocState> _onUserLoadedEvent(UserLoadedEvent event) async* {
    if (event.user == null) {
      yield const UnAuthrized();
    } else {
      yield Loaded(event.user);
    }
  }

  Stream<UserBlocState> _onLoadUserEvent(LoadUserStarted event) async* {
    try {
      await _userSubscription?.cancel();
      _userSubscription = userRepository.dataStream.listen((event) {
        add(UserLoadedEvent(event));
      });
      await userRepository.loadUser();
    } catch (e, st) {
      logger.d("Can't load user", e, st);
      yield const UnAuthrized();
    }
  }

  @override
  Future<void> close() async {
    await _userSubscription?.cancel();
    return super.close();
  }
}
