import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_theme.freezed.dart';

@freezed
class AppTheme with _$AppTheme {
  const factory AppTheme.light() = AppLightTheme;

  const factory AppTheme.dark() = AppDarkTheme;
}
