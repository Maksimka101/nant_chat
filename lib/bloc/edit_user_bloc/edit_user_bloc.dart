import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nant_client/generated/l10n.dart';
import 'package:nant_client/models/user/user.dart';
import 'package:nant_client/repository/user_repository/user_repository.dart';
import 'package:nant_client/utils/logger/logger.dart';

part 'edit_user_bloc.freezed.dart';

@freezed
abstract class EditUserBlocEvent with _$EditUserBlocEvent {
  const factory EditUserBlocEvent.userCreated({
    @required CreateUser createUser,
  }) = UserCreated;

  const factory EditUserBlocEvent.userUpdated({
    @required UpdateUser updateUser,
  }) = UserUpdated;

  const factory EditUserBlocEvent.userDeleted() = UserDeleted;
}

@freezed
abstract class EditUserBlocState with _$EditUserBlocState {
  const factory EditUserBlocState.initial() = Initial;

  const factory EditUserBlocState.userUpdatedSuccessfully() =
      UserUpdatedSuccessfully;

  const factory EditUserBlocState.userCreatedSuccessfully() =
      UserCreatedSuccessfully;

  const factory EditUserBlocState.userCreationStarted() = UserCreationStarted;

  const factory EditUserBlocState.userUpdateStarted() = UserUpdateStarted;

  const factory EditUserBlocState.userDeletingStarted() = UserDeletingStarted;

  const factory EditUserBlocState.error(String msg) = ErrorUserState;
}

class EditUserBloc extends Bloc<EditUserBlocEvent, EditUserBlocState> {
  EditUserBloc({@required this.userRepository}) : super(const Initial());
  final UserRepository userRepository;

  @override
  Stream<EditUserBlocState> mapEventToState(EditUserBlocEvent event) async* {
    yield* event.map(
      userDeleted: _onUserDeletedEvent,
      userCreated: _onUserCreatedEvent,
      userUpdated: _onUserUpdatedEvent,
    );
  }

  Stream<EditUserBlocState> _onUserDeletedEvent(UserDeleted event) async* {
    try {
      yield const UserDeletingStarted();
      await userRepository.deleteUser();
    } catch (e, st) {
      logger.d("Failed to create user", e, st);
      yield ErrorUserState(
        S.current.failedToCreateUserDueToError(e.toString()),
      );
    }
  }

  Stream<EditUserBlocState> _onUserCreatedEvent(UserCreated event) async* {
    try {
      yield const UserCreationStarted();
      // to show loading widget in auth screen
      await Future<void>.delayed(const Duration(seconds: 1));
      await userRepository.createUser(event.createUser);
      yield const UserCreatedSuccessfully();
    } catch (e, st) {
      logger.d("Failed to create user", e, st);
      yield ErrorUserState(
        S.current.failedToCreateUserDueToError(e.toString()),
      );
    }
  }

  Stream<EditUserBlocState> _onUserUpdatedEvent(UserUpdated event) async* {
    try {
      yield const UserUpdateStarted();
      await userRepository.updateUser(event.updateUser);
      yield const UserUpdatedSuccessfully();
    } catch (e, st) {
      logger.d("Failed to create user", e, st);
      yield ErrorUserState(
        S.current.failedToCreateUserDueToError(e.toString()),
      );
    }
  }
}
