import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'chat_user.freezed.dart';
part 'chat_user.g.dart';

/// Chat user with name, avatar [not now], and another info
@HiveType(typeId: 1)
@freezed
class ChatUser with _$ChatUser {
  const factory ChatUser({
    @HiveField(0) required String name,
  }) = _ChatUser;
}
