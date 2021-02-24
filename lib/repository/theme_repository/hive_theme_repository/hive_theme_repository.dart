import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:nant_client/models/app_theme/app_theme.dart';
import 'package:nant_client/repository/theme_repository/theme_repository.dart';
import 'package:nant_client/utils/logger/logger.dart';

class HiveThemeRepository extends ThemeRepository {
  HiveThemeRepository({
    @required AppTheme defaultTheme,
  }) : super(defaultTheme: defaultTheme);

  static const _themeBoxName = "ThemeBox";
  Box<bool> _themeBox;
  var _initialized = false;

  @override
  Future<void> initialize() async {
    if (!_initialized) {
      _themeBox = await Hive.openBox(_themeBoxName);
      _initialized = true;
    }
    return super.initialize();
  }

  @override
  Future<void> loadTheme() async {
    assertInitialized(_themeBox != null);
    try {
      final isDarkTheme = _themeBox.get(_themeBoxName);
      if (isDarkTheme == null) {
        emit(defaultTheme);
      } else if (isDarkTheme) {
        emit(const AppTheme.dark());
      } else {
        emit(const AppTheme.light());
      }
    } catch (e, st) {
      logger.e("Can't load theme. Emit defaultTheme", e, st);
      emit(defaultTheme);
    }
  }

  @override
  Future<void> updateTheme(AppTheme theme) async {
    assertInitialized(_themeBox != null);
    try {
      await theme.map(
        light: (_) => _themeBox.put(_themeBoxName, false),
        dark: (_) => _themeBox.put(_themeBoxName, true),
      );
      emit(theme);
    } catch (e, st) {
      logger.e("Can't update theme. Load old theme", e, st);
      await loadTheme();
    }
  }

  @override
  Future<void> dispose() async {
    await _themeBox?.close();
    return super.dispose();
  }
}
