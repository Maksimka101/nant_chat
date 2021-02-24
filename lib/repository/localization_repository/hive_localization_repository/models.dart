import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@HiveType(typeId: 4)
@freezed
abstract class Locale with _$Locale {
  const factory Locale({
    @HiveField(0) @required String languageCode,
    @HiveField(1) String countryCode,
  }) = _Locale;
}
