import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@HiveType(typeId: 3)
@freezed
abstract class User with _$User {
  const factory User({
    @HiveField(0) @required String name,
  }) = _User;
}

@freezed
abstract class CreateUser with _$CreateUser {
  const factory CreateUser({
    @required String name,
  }) = _CreateUser;
}

@freezed
abstract class UpdateUser with _$UpdateUser {
  const factory UpdateUser({
    @required String name,
  }) = _UpdateUser;
}
