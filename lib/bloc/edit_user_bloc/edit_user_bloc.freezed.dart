// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'edit_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EditUserBlocEventTearOff {
  const _$EditUserBlocEventTearOff();

// ignore: unused_element
  UserCreated userCreated({@required CreateUser createUser}) {
    return UserCreated(
      createUser: createUser,
    );
  }

// ignore: unused_element
  UserUpdated userUpdated({@required UpdateUser updateUser}) {
    return UserUpdated(
      updateUser: updateUser,
    );
  }

// ignore: unused_element
  UserDeleted userDeleted() {
    return const UserDeleted();
  }
}

/// @nodoc
// ignore: unused_element
const $EditUserBlocEvent = _$EditUserBlocEventTearOff();

/// @nodoc
mixin _$EditUserBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userCreated(CreateUser createUser),
    @required TResult userUpdated(UpdateUser updateUser),
    @required TResult userDeleted(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userCreated(CreateUser createUser),
    TResult userUpdated(UpdateUser updateUser),
    TResult userDeleted(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userCreated(UserCreated value),
    @required TResult userUpdated(UserUpdated value),
    @required TResult userDeleted(UserDeleted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userCreated(UserCreated value),
    TResult userUpdated(UserUpdated value),
    TResult userDeleted(UserDeleted value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $EditUserBlocEventCopyWith<$Res> {
  factory $EditUserBlocEventCopyWith(
          EditUserBlocEvent value, $Res Function(EditUserBlocEvent) then) =
      _$EditUserBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditUserBlocEventCopyWithImpl<$Res>
    implements $EditUserBlocEventCopyWith<$Res> {
  _$EditUserBlocEventCopyWithImpl(this._value, this._then);

  final EditUserBlocEvent _value;
  // ignore: unused_field
  final $Res Function(EditUserBlocEvent) _then;
}

/// @nodoc
abstract class $UserCreatedCopyWith<$Res> {
  factory $UserCreatedCopyWith(
          UserCreated value, $Res Function(UserCreated) then) =
      _$UserCreatedCopyWithImpl<$Res>;
  $Res call({CreateUser createUser});

  $CreateUserCopyWith<$Res> get createUser;
}

/// @nodoc
class _$UserCreatedCopyWithImpl<$Res>
    extends _$EditUserBlocEventCopyWithImpl<$Res>
    implements $UserCreatedCopyWith<$Res> {
  _$UserCreatedCopyWithImpl(
      UserCreated _value, $Res Function(UserCreated) _then)
      : super(_value, (v) => _then(v as UserCreated));

  @override
  UserCreated get _value => super._value as UserCreated;

  @override
  $Res call({
    Object createUser = freezed,
  }) {
    return _then(UserCreated(
      createUser:
          createUser == freezed ? _value.createUser : createUser as CreateUser,
    ));
  }

  @override
  $CreateUserCopyWith<$Res> get createUser {
    if (_value.createUser == null) {
      return null;
    }
    return $CreateUserCopyWith<$Res>(_value.createUser, (value) {
      return _then(_value.copyWith(createUser: value));
    });
  }
}

/// @nodoc
class _$UserCreated implements UserCreated {
  const _$UserCreated({@required this.createUser}) : assert(createUser != null);

  @override
  final CreateUser createUser;

  @override
  String toString() {
    return 'EditUserBlocEvent.userCreated(createUser: $createUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserCreated &&
            (identical(other.createUser, createUser) ||
                const DeepCollectionEquality()
                    .equals(other.createUser, createUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(createUser);

  @JsonKey(ignore: true)
  @override
  $UserCreatedCopyWith<UserCreated> get copyWith =>
      _$UserCreatedCopyWithImpl<UserCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userCreated(CreateUser createUser),
    @required TResult userUpdated(UpdateUser updateUser),
    @required TResult userDeleted(),
  }) {
    assert(userCreated != null);
    assert(userUpdated != null);
    assert(userDeleted != null);
    return userCreated(createUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userCreated(CreateUser createUser),
    TResult userUpdated(UpdateUser updateUser),
    TResult userDeleted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userCreated != null) {
      return userCreated(createUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userCreated(UserCreated value),
    @required TResult userUpdated(UserUpdated value),
    @required TResult userDeleted(UserDeleted value),
  }) {
    assert(userCreated != null);
    assert(userUpdated != null);
    assert(userDeleted != null);
    return userCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userCreated(UserCreated value),
    TResult userUpdated(UserUpdated value),
    TResult userDeleted(UserDeleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userCreated != null) {
      return userCreated(this);
    }
    return orElse();
  }
}

abstract class UserCreated implements EditUserBlocEvent {
  const factory UserCreated({@required CreateUser createUser}) = _$UserCreated;

  CreateUser get createUser;
  @JsonKey(ignore: true)
  $UserCreatedCopyWith<UserCreated> get copyWith;
}

/// @nodoc
abstract class $UserUpdatedCopyWith<$Res> {
  factory $UserUpdatedCopyWith(
          UserUpdated value, $Res Function(UserUpdated) then) =
      _$UserUpdatedCopyWithImpl<$Res>;
  $Res call({UpdateUser updateUser});

  $UpdateUserCopyWith<$Res> get updateUser;
}

/// @nodoc
class _$UserUpdatedCopyWithImpl<$Res>
    extends _$EditUserBlocEventCopyWithImpl<$Res>
    implements $UserUpdatedCopyWith<$Res> {
  _$UserUpdatedCopyWithImpl(
      UserUpdated _value, $Res Function(UserUpdated) _then)
      : super(_value, (v) => _then(v as UserUpdated));

  @override
  UserUpdated get _value => super._value as UserUpdated;

  @override
  $Res call({
    Object updateUser = freezed,
  }) {
    return _then(UserUpdated(
      updateUser:
          updateUser == freezed ? _value.updateUser : updateUser as UpdateUser,
    ));
  }

  @override
  $UpdateUserCopyWith<$Res> get updateUser {
    if (_value.updateUser == null) {
      return null;
    }
    return $UpdateUserCopyWith<$Res>(_value.updateUser, (value) {
      return _then(_value.copyWith(updateUser: value));
    });
  }
}

/// @nodoc
class _$UserUpdated implements UserUpdated {
  const _$UserUpdated({@required this.updateUser}) : assert(updateUser != null);

  @override
  final UpdateUser updateUser;

  @override
  String toString() {
    return 'EditUserBlocEvent.userUpdated(updateUser: $updateUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserUpdated &&
            (identical(other.updateUser, updateUser) ||
                const DeepCollectionEquality()
                    .equals(other.updateUser, updateUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(updateUser);

  @JsonKey(ignore: true)
  @override
  $UserUpdatedCopyWith<UserUpdated> get copyWith =>
      _$UserUpdatedCopyWithImpl<UserUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userCreated(CreateUser createUser),
    @required TResult userUpdated(UpdateUser updateUser),
    @required TResult userDeleted(),
  }) {
    assert(userCreated != null);
    assert(userUpdated != null);
    assert(userDeleted != null);
    return userUpdated(updateUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userCreated(CreateUser createUser),
    TResult userUpdated(UpdateUser updateUser),
    TResult userDeleted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userUpdated != null) {
      return userUpdated(updateUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userCreated(UserCreated value),
    @required TResult userUpdated(UserUpdated value),
    @required TResult userDeleted(UserDeleted value),
  }) {
    assert(userCreated != null);
    assert(userUpdated != null);
    assert(userDeleted != null);
    return userUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userCreated(UserCreated value),
    TResult userUpdated(UserUpdated value),
    TResult userDeleted(UserDeleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userUpdated != null) {
      return userUpdated(this);
    }
    return orElse();
  }
}

abstract class UserUpdated implements EditUserBlocEvent {
  const factory UserUpdated({@required UpdateUser updateUser}) = _$UserUpdated;

  UpdateUser get updateUser;
  @JsonKey(ignore: true)
  $UserUpdatedCopyWith<UserUpdated> get copyWith;
}

/// @nodoc
abstract class $UserDeletedCopyWith<$Res> {
  factory $UserDeletedCopyWith(
          UserDeleted value, $Res Function(UserDeleted) then) =
      _$UserDeletedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDeletedCopyWithImpl<$Res>
    extends _$EditUserBlocEventCopyWithImpl<$Res>
    implements $UserDeletedCopyWith<$Res> {
  _$UserDeletedCopyWithImpl(
      UserDeleted _value, $Res Function(UserDeleted) _then)
      : super(_value, (v) => _then(v as UserDeleted));

  @override
  UserDeleted get _value => super._value as UserDeleted;
}

/// @nodoc
class _$UserDeleted implements UserDeleted {
  const _$UserDeleted();

  @override
  String toString() {
    return 'EditUserBlocEvent.userDeleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserDeleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userCreated(CreateUser createUser),
    @required TResult userUpdated(UpdateUser updateUser),
    @required TResult userDeleted(),
  }) {
    assert(userCreated != null);
    assert(userUpdated != null);
    assert(userDeleted != null);
    return userDeleted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userCreated(CreateUser createUser),
    TResult userUpdated(UpdateUser updateUser),
    TResult userDeleted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userDeleted != null) {
      return userDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userCreated(UserCreated value),
    @required TResult userUpdated(UserUpdated value),
    @required TResult userDeleted(UserDeleted value),
  }) {
    assert(userCreated != null);
    assert(userUpdated != null);
    assert(userDeleted != null);
    return userDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userCreated(UserCreated value),
    TResult userUpdated(UserUpdated value),
    TResult userDeleted(UserDeleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userDeleted != null) {
      return userDeleted(this);
    }
    return orElse();
  }
}

abstract class UserDeleted implements EditUserBlocEvent {
  const factory UserDeleted() = _$UserDeleted;
}

/// @nodoc
class _$EditUserBlocStateTearOff {
  const _$EditUserBlocStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  UserUpdatedSuccessfully userUpdatedSuccessfully() {
    return const UserUpdatedSuccessfully();
  }

// ignore: unused_element
  UserCreatedSuccessfully userCreatedSuccessfully() {
    return const UserCreatedSuccessfully();
  }

// ignore: unused_element
  UserCreationStarted userCreationStarted() {
    return const UserCreationStarted();
  }

// ignore: unused_element
  UserUpdateStarted userUpdateStarted() {
    return const UserUpdateStarted();
  }

// ignore: unused_element
  UserDeletingStarted userDeletingStarted() {
    return const UserDeletingStarted();
  }

// ignore: unused_element
  ErrorUserState error(String msg) {
    return ErrorUserState(
      msg,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EditUserBlocState = _$EditUserBlocStateTearOff();

/// @nodoc
mixin _$EditUserBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult userUpdatedSuccessfully(),
    @required TResult userCreatedSuccessfully(),
    @required TResult userCreationStarted(),
    @required TResult userUpdateStarted(),
    @required TResult userDeletingStarted(),
    @required TResult error(String msg),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult userUpdatedSuccessfully(),
    TResult userCreatedSuccessfully(),
    TResult userCreationStarted(),
    TResult userUpdateStarted(),
    TResult userDeletingStarted(),
    TResult error(String msg),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult userUpdatedSuccessfully(UserUpdatedSuccessfully value),
    @required TResult userCreatedSuccessfully(UserCreatedSuccessfully value),
    @required TResult userCreationStarted(UserCreationStarted value),
    @required TResult userUpdateStarted(UserUpdateStarted value),
    @required TResult userDeletingStarted(UserDeletingStarted value),
    @required TResult error(ErrorUserState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult userUpdatedSuccessfully(UserUpdatedSuccessfully value),
    TResult userCreatedSuccessfully(UserCreatedSuccessfully value),
    TResult userCreationStarted(UserCreationStarted value),
    TResult userUpdateStarted(UserUpdateStarted value),
    TResult userDeletingStarted(UserDeletingStarted value),
    TResult error(ErrorUserState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $EditUserBlocStateCopyWith<$Res> {
  factory $EditUserBlocStateCopyWith(
          EditUserBlocState value, $Res Function(EditUserBlocState) then) =
      _$EditUserBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditUserBlocStateCopyWithImpl<$Res>
    implements $EditUserBlocStateCopyWith<$Res> {
  _$EditUserBlocStateCopyWithImpl(this._value, this._then);

  final EditUserBlocState _value;
  // ignore: unused_field
  final $Res Function(EditUserBlocState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$EditUserBlocStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'EditUserBlocState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult userUpdatedSuccessfully(),
    @required TResult userCreatedSuccessfully(),
    @required TResult userCreationStarted(),
    @required TResult userUpdateStarted(),
    @required TResult userDeletingStarted(),
    @required TResult error(String msg),
  }) {
    assert(initial != null);
    assert(userUpdatedSuccessfully != null);
    assert(userCreatedSuccessfully != null);
    assert(userCreationStarted != null);
    assert(userUpdateStarted != null);
    assert(userDeletingStarted != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult userUpdatedSuccessfully(),
    TResult userCreatedSuccessfully(),
    TResult userCreationStarted(),
    TResult userUpdateStarted(),
    TResult userDeletingStarted(),
    TResult error(String msg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult userUpdatedSuccessfully(UserUpdatedSuccessfully value),
    @required TResult userCreatedSuccessfully(UserCreatedSuccessfully value),
    @required TResult userCreationStarted(UserCreationStarted value),
    @required TResult userUpdateStarted(UserUpdateStarted value),
    @required TResult userDeletingStarted(UserDeletingStarted value),
    @required TResult error(ErrorUserState value),
  }) {
    assert(initial != null);
    assert(userUpdatedSuccessfully != null);
    assert(userCreatedSuccessfully != null);
    assert(userCreationStarted != null);
    assert(userUpdateStarted != null);
    assert(userDeletingStarted != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult userUpdatedSuccessfully(UserUpdatedSuccessfully value),
    TResult userCreatedSuccessfully(UserCreatedSuccessfully value),
    TResult userCreationStarted(UserCreationStarted value),
    TResult userUpdateStarted(UserUpdateStarted value),
    TResult userDeletingStarted(UserDeletingStarted value),
    TResult error(ErrorUserState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements EditUserBlocState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $UserUpdatedSuccessfullyCopyWith<$Res> {
  factory $UserUpdatedSuccessfullyCopyWith(UserUpdatedSuccessfully value,
          $Res Function(UserUpdatedSuccessfully) then) =
      _$UserUpdatedSuccessfullyCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserUpdatedSuccessfullyCopyWithImpl<$Res>
    extends _$EditUserBlocStateCopyWithImpl<$Res>
    implements $UserUpdatedSuccessfullyCopyWith<$Res> {
  _$UserUpdatedSuccessfullyCopyWithImpl(UserUpdatedSuccessfully _value,
      $Res Function(UserUpdatedSuccessfully) _then)
      : super(_value, (v) => _then(v as UserUpdatedSuccessfully));

  @override
  UserUpdatedSuccessfully get _value => super._value as UserUpdatedSuccessfully;
}

/// @nodoc
class _$UserUpdatedSuccessfully implements UserUpdatedSuccessfully {
  const _$UserUpdatedSuccessfully();

  @override
  String toString() {
    return 'EditUserBlocState.userUpdatedSuccessfully()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserUpdatedSuccessfully);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult userUpdatedSuccessfully(),
    @required TResult userCreatedSuccessfully(),
    @required TResult userCreationStarted(),
    @required TResult userUpdateStarted(),
    @required TResult userDeletingStarted(),
    @required TResult error(String msg),
  }) {
    assert(initial != null);
    assert(userUpdatedSuccessfully != null);
    assert(userCreatedSuccessfully != null);
    assert(userCreationStarted != null);
    assert(userUpdateStarted != null);
    assert(userDeletingStarted != null);
    assert(error != null);
    return userUpdatedSuccessfully();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult userUpdatedSuccessfully(),
    TResult userCreatedSuccessfully(),
    TResult userCreationStarted(),
    TResult userUpdateStarted(),
    TResult userDeletingStarted(),
    TResult error(String msg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userUpdatedSuccessfully != null) {
      return userUpdatedSuccessfully();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult userUpdatedSuccessfully(UserUpdatedSuccessfully value),
    @required TResult userCreatedSuccessfully(UserCreatedSuccessfully value),
    @required TResult userCreationStarted(UserCreationStarted value),
    @required TResult userUpdateStarted(UserUpdateStarted value),
    @required TResult userDeletingStarted(UserDeletingStarted value),
    @required TResult error(ErrorUserState value),
  }) {
    assert(initial != null);
    assert(userUpdatedSuccessfully != null);
    assert(userCreatedSuccessfully != null);
    assert(userCreationStarted != null);
    assert(userUpdateStarted != null);
    assert(userDeletingStarted != null);
    assert(error != null);
    return userUpdatedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult userUpdatedSuccessfully(UserUpdatedSuccessfully value),
    TResult userCreatedSuccessfully(UserCreatedSuccessfully value),
    TResult userCreationStarted(UserCreationStarted value),
    TResult userUpdateStarted(UserUpdateStarted value),
    TResult userDeletingStarted(UserDeletingStarted value),
    TResult error(ErrorUserState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userUpdatedSuccessfully != null) {
      return userUpdatedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class UserUpdatedSuccessfully implements EditUserBlocState {
  const factory UserUpdatedSuccessfully() = _$UserUpdatedSuccessfully;
}

/// @nodoc
abstract class $UserCreatedSuccessfullyCopyWith<$Res> {
  factory $UserCreatedSuccessfullyCopyWith(UserCreatedSuccessfully value,
          $Res Function(UserCreatedSuccessfully) then) =
      _$UserCreatedSuccessfullyCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserCreatedSuccessfullyCopyWithImpl<$Res>
    extends _$EditUserBlocStateCopyWithImpl<$Res>
    implements $UserCreatedSuccessfullyCopyWith<$Res> {
  _$UserCreatedSuccessfullyCopyWithImpl(UserCreatedSuccessfully _value,
      $Res Function(UserCreatedSuccessfully) _then)
      : super(_value, (v) => _then(v as UserCreatedSuccessfully));

  @override
  UserCreatedSuccessfully get _value => super._value as UserCreatedSuccessfully;
}

/// @nodoc
class _$UserCreatedSuccessfully implements UserCreatedSuccessfully {
  const _$UserCreatedSuccessfully();

  @override
  String toString() {
    return 'EditUserBlocState.userCreatedSuccessfully()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserCreatedSuccessfully);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult userUpdatedSuccessfully(),
    @required TResult userCreatedSuccessfully(),
    @required TResult userCreationStarted(),
    @required TResult userUpdateStarted(),
    @required TResult userDeletingStarted(),
    @required TResult error(String msg),
  }) {
    assert(initial != null);
    assert(userUpdatedSuccessfully != null);
    assert(userCreatedSuccessfully != null);
    assert(userCreationStarted != null);
    assert(userUpdateStarted != null);
    assert(userDeletingStarted != null);
    assert(error != null);
    return userCreatedSuccessfully();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult userUpdatedSuccessfully(),
    TResult userCreatedSuccessfully(),
    TResult userCreationStarted(),
    TResult userUpdateStarted(),
    TResult userDeletingStarted(),
    TResult error(String msg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userCreatedSuccessfully != null) {
      return userCreatedSuccessfully();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult userUpdatedSuccessfully(UserUpdatedSuccessfully value),
    @required TResult userCreatedSuccessfully(UserCreatedSuccessfully value),
    @required TResult userCreationStarted(UserCreationStarted value),
    @required TResult userUpdateStarted(UserUpdateStarted value),
    @required TResult userDeletingStarted(UserDeletingStarted value),
    @required TResult error(ErrorUserState value),
  }) {
    assert(initial != null);
    assert(userUpdatedSuccessfully != null);
    assert(userCreatedSuccessfully != null);
    assert(userCreationStarted != null);
    assert(userUpdateStarted != null);
    assert(userDeletingStarted != null);
    assert(error != null);
    return userCreatedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult userUpdatedSuccessfully(UserUpdatedSuccessfully value),
    TResult userCreatedSuccessfully(UserCreatedSuccessfully value),
    TResult userCreationStarted(UserCreationStarted value),
    TResult userUpdateStarted(UserUpdateStarted value),
    TResult userDeletingStarted(UserDeletingStarted value),
    TResult error(ErrorUserState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userCreatedSuccessfully != null) {
      return userCreatedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class UserCreatedSuccessfully implements EditUserBlocState {
  const factory UserCreatedSuccessfully() = _$UserCreatedSuccessfully;
}

/// @nodoc
abstract class $UserCreationStartedCopyWith<$Res> {
  factory $UserCreationStartedCopyWith(
          UserCreationStarted value, $Res Function(UserCreationStarted) then) =
      _$UserCreationStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserCreationStartedCopyWithImpl<$Res>
    extends _$EditUserBlocStateCopyWithImpl<$Res>
    implements $UserCreationStartedCopyWith<$Res> {
  _$UserCreationStartedCopyWithImpl(
      UserCreationStarted _value, $Res Function(UserCreationStarted) _then)
      : super(_value, (v) => _then(v as UserCreationStarted));

  @override
  UserCreationStarted get _value => super._value as UserCreationStarted;
}

/// @nodoc
class _$UserCreationStarted implements UserCreationStarted {
  const _$UserCreationStarted();

  @override
  String toString() {
    return 'EditUserBlocState.userCreationStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserCreationStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult userUpdatedSuccessfully(),
    @required TResult userCreatedSuccessfully(),
    @required TResult userCreationStarted(),
    @required TResult userUpdateStarted(),
    @required TResult userDeletingStarted(),
    @required TResult error(String msg),
  }) {
    assert(initial != null);
    assert(userUpdatedSuccessfully != null);
    assert(userCreatedSuccessfully != null);
    assert(userCreationStarted != null);
    assert(userUpdateStarted != null);
    assert(userDeletingStarted != null);
    assert(error != null);
    return userCreationStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult userUpdatedSuccessfully(),
    TResult userCreatedSuccessfully(),
    TResult userCreationStarted(),
    TResult userUpdateStarted(),
    TResult userDeletingStarted(),
    TResult error(String msg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userCreationStarted != null) {
      return userCreationStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult userUpdatedSuccessfully(UserUpdatedSuccessfully value),
    @required TResult userCreatedSuccessfully(UserCreatedSuccessfully value),
    @required TResult userCreationStarted(UserCreationStarted value),
    @required TResult userUpdateStarted(UserUpdateStarted value),
    @required TResult userDeletingStarted(UserDeletingStarted value),
    @required TResult error(ErrorUserState value),
  }) {
    assert(initial != null);
    assert(userUpdatedSuccessfully != null);
    assert(userCreatedSuccessfully != null);
    assert(userCreationStarted != null);
    assert(userUpdateStarted != null);
    assert(userDeletingStarted != null);
    assert(error != null);
    return userCreationStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult userUpdatedSuccessfully(UserUpdatedSuccessfully value),
    TResult userCreatedSuccessfully(UserCreatedSuccessfully value),
    TResult userCreationStarted(UserCreationStarted value),
    TResult userUpdateStarted(UserUpdateStarted value),
    TResult userDeletingStarted(UserDeletingStarted value),
    TResult error(ErrorUserState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userCreationStarted != null) {
      return userCreationStarted(this);
    }
    return orElse();
  }
}

abstract class UserCreationStarted implements EditUserBlocState {
  const factory UserCreationStarted() = _$UserCreationStarted;
}

/// @nodoc
abstract class $UserUpdateStartedCopyWith<$Res> {
  factory $UserUpdateStartedCopyWith(
          UserUpdateStarted value, $Res Function(UserUpdateStarted) then) =
      _$UserUpdateStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserUpdateStartedCopyWithImpl<$Res>
    extends _$EditUserBlocStateCopyWithImpl<$Res>
    implements $UserUpdateStartedCopyWith<$Res> {
  _$UserUpdateStartedCopyWithImpl(
      UserUpdateStarted _value, $Res Function(UserUpdateStarted) _then)
      : super(_value, (v) => _then(v as UserUpdateStarted));

  @override
  UserUpdateStarted get _value => super._value as UserUpdateStarted;
}

/// @nodoc
class _$UserUpdateStarted implements UserUpdateStarted {
  const _$UserUpdateStarted();

  @override
  String toString() {
    return 'EditUserBlocState.userUpdateStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserUpdateStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult userUpdatedSuccessfully(),
    @required TResult userCreatedSuccessfully(),
    @required TResult userCreationStarted(),
    @required TResult userUpdateStarted(),
    @required TResult userDeletingStarted(),
    @required TResult error(String msg),
  }) {
    assert(initial != null);
    assert(userUpdatedSuccessfully != null);
    assert(userCreatedSuccessfully != null);
    assert(userCreationStarted != null);
    assert(userUpdateStarted != null);
    assert(userDeletingStarted != null);
    assert(error != null);
    return userUpdateStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult userUpdatedSuccessfully(),
    TResult userCreatedSuccessfully(),
    TResult userCreationStarted(),
    TResult userUpdateStarted(),
    TResult userDeletingStarted(),
    TResult error(String msg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userUpdateStarted != null) {
      return userUpdateStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult userUpdatedSuccessfully(UserUpdatedSuccessfully value),
    @required TResult userCreatedSuccessfully(UserCreatedSuccessfully value),
    @required TResult userCreationStarted(UserCreationStarted value),
    @required TResult userUpdateStarted(UserUpdateStarted value),
    @required TResult userDeletingStarted(UserDeletingStarted value),
    @required TResult error(ErrorUserState value),
  }) {
    assert(initial != null);
    assert(userUpdatedSuccessfully != null);
    assert(userCreatedSuccessfully != null);
    assert(userCreationStarted != null);
    assert(userUpdateStarted != null);
    assert(userDeletingStarted != null);
    assert(error != null);
    return userUpdateStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult userUpdatedSuccessfully(UserUpdatedSuccessfully value),
    TResult userCreatedSuccessfully(UserCreatedSuccessfully value),
    TResult userCreationStarted(UserCreationStarted value),
    TResult userUpdateStarted(UserUpdateStarted value),
    TResult userDeletingStarted(UserDeletingStarted value),
    TResult error(ErrorUserState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userUpdateStarted != null) {
      return userUpdateStarted(this);
    }
    return orElse();
  }
}

abstract class UserUpdateStarted implements EditUserBlocState {
  const factory UserUpdateStarted() = _$UserUpdateStarted;
}

/// @nodoc
abstract class $UserDeletingStartedCopyWith<$Res> {
  factory $UserDeletingStartedCopyWith(
          UserDeletingStarted value, $Res Function(UserDeletingStarted) then) =
      _$UserDeletingStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDeletingStartedCopyWithImpl<$Res>
    extends _$EditUserBlocStateCopyWithImpl<$Res>
    implements $UserDeletingStartedCopyWith<$Res> {
  _$UserDeletingStartedCopyWithImpl(
      UserDeletingStarted _value, $Res Function(UserDeletingStarted) _then)
      : super(_value, (v) => _then(v as UserDeletingStarted));

  @override
  UserDeletingStarted get _value => super._value as UserDeletingStarted;
}

/// @nodoc
class _$UserDeletingStarted implements UserDeletingStarted {
  const _$UserDeletingStarted();

  @override
  String toString() {
    return 'EditUserBlocState.userDeletingStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserDeletingStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult userUpdatedSuccessfully(),
    @required TResult userCreatedSuccessfully(),
    @required TResult userCreationStarted(),
    @required TResult userUpdateStarted(),
    @required TResult userDeletingStarted(),
    @required TResult error(String msg),
  }) {
    assert(initial != null);
    assert(userUpdatedSuccessfully != null);
    assert(userCreatedSuccessfully != null);
    assert(userCreationStarted != null);
    assert(userUpdateStarted != null);
    assert(userDeletingStarted != null);
    assert(error != null);
    return userDeletingStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult userUpdatedSuccessfully(),
    TResult userCreatedSuccessfully(),
    TResult userCreationStarted(),
    TResult userUpdateStarted(),
    TResult userDeletingStarted(),
    TResult error(String msg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userDeletingStarted != null) {
      return userDeletingStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult userUpdatedSuccessfully(UserUpdatedSuccessfully value),
    @required TResult userCreatedSuccessfully(UserCreatedSuccessfully value),
    @required TResult userCreationStarted(UserCreationStarted value),
    @required TResult userUpdateStarted(UserUpdateStarted value),
    @required TResult userDeletingStarted(UserDeletingStarted value),
    @required TResult error(ErrorUserState value),
  }) {
    assert(initial != null);
    assert(userUpdatedSuccessfully != null);
    assert(userCreatedSuccessfully != null);
    assert(userCreationStarted != null);
    assert(userUpdateStarted != null);
    assert(userDeletingStarted != null);
    assert(error != null);
    return userDeletingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult userUpdatedSuccessfully(UserUpdatedSuccessfully value),
    TResult userCreatedSuccessfully(UserCreatedSuccessfully value),
    TResult userCreationStarted(UserCreationStarted value),
    TResult userUpdateStarted(UserUpdateStarted value),
    TResult userDeletingStarted(UserDeletingStarted value),
    TResult error(ErrorUserState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userDeletingStarted != null) {
      return userDeletingStarted(this);
    }
    return orElse();
  }
}

abstract class UserDeletingStarted implements EditUserBlocState {
  const factory UserDeletingStarted() = _$UserDeletingStarted;
}

/// @nodoc
abstract class $ErrorUserStateCopyWith<$Res> {
  factory $ErrorUserStateCopyWith(
          ErrorUserState value, $Res Function(ErrorUserState) then) =
      _$ErrorUserStateCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class _$ErrorUserStateCopyWithImpl<$Res>
    extends _$EditUserBlocStateCopyWithImpl<$Res>
    implements $ErrorUserStateCopyWith<$Res> {
  _$ErrorUserStateCopyWithImpl(
      ErrorUserState _value, $Res Function(ErrorUserState) _then)
      : super(_value, (v) => _then(v as ErrorUserState));

  @override
  ErrorUserState get _value => super._value as ErrorUserState;

  @override
  $Res call({
    Object msg = freezed,
  }) {
    return _then(ErrorUserState(
      msg == freezed ? _value.msg : msg as String,
    ));
  }
}

/// @nodoc
class _$ErrorUserState implements ErrorUserState {
  const _$ErrorUserState(this.msg) : assert(msg != null);

  @override
  final String msg;

  @override
  String toString() {
    return 'EditUserBlocState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorUserState &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  $ErrorUserStateCopyWith<ErrorUserState> get copyWith =>
      _$ErrorUserStateCopyWithImpl<ErrorUserState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult userUpdatedSuccessfully(),
    @required TResult userCreatedSuccessfully(),
    @required TResult userCreationStarted(),
    @required TResult userUpdateStarted(),
    @required TResult userDeletingStarted(),
    @required TResult error(String msg),
  }) {
    assert(initial != null);
    assert(userUpdatedSuccessfully != null);
    assert(userCreatedSuccessfully != null);
    assert(userCreationStarted != null);
    assert(userUpdateStarted != null);
    assert(userDeletingStarted != null);
    assert(error != null);
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult userUpdatedSuccessfully(),
    TResult userCreatedSuccessfully(),
    TResult userCreationStarted(),
    TResult userUpdateStarted(),
    TResult userDeletingStarted(),
    TResult error(String msg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult userUpdatedSuccessfully(UserUpdatedSuccessfully value),
    @required TResult userCreatedSuccessfully(UserCreatedSuccessfully value),
    @required TResult userCreationStarted(UserCreationStarted value),
    @required TResult userUpdateStarted(UserUpdateStarted value),
    @required TResult userDeletingStarted(UserDeletingStarted value),
    @required TResult error(ErrorUserState value),
  }) {
    assert(initial != null);
    assert(userUpdatedSuccessfully != null);
    assert(userCreatedSuccessfully != null);
    assert(userCreationStarted != null);
    assert(userUpdateStarted != null);
    assert(userDeletingStarted != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult userUpdatedSuccessfully(UserUpdatedSuccessfully value),
    TResult userCreatedSuccessfully(UserCreatedSuccessfully value),
    TResult userCreationStarted(UserCreationStarted value),
    TResult userUpdateStarted(UserUpdateStarted value),
    TResult userDeletingStarted(UserDeletingStarted value),
    TResult error(ErrorUserState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorUserState implements EditUserBlocState {
  const factory ErrorUserState(String msg) = _$ErrorUserState;

  String get msg;
  @JsonKey(ignore: true)
  $ErrorUserStateCopyWith<ErrorUserState> get copyWith;
}
