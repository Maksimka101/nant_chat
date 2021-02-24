import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'models.freezed.dart';

part 'models.g.dart';

@freezed
abstract class HiveRoom with _$HiveRoom {
  @HiveType(typeId: 2)
  const factory HiveRoom({
    @HiveField(0) @required String name,
    @HiveField(1) @required int messagesCount,
  }) = _HiveRoom;
}
