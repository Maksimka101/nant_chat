import 'package:nant_client/models/app_theme/app_theme.dart';
import 'package:nant_client/repository/theme_repository/theme_repository.dart';
import 'package:nant_client/utils/hive/hive_box_utils.dart';
import 'package:nant_client/utils/logger/logger.dart';

class HiveThemeRepository extends ThemeRepository {
  HiveThemeRepository({
    required AppTheme defaultTheme,
  }) : super(defaultTheme: defaultTheme);

  static const _themeBoxName = "ThemeBox";
  late final _themeBox = openHiveBox<bool>(_themeBoxName);

  @override
  Future<void> loadTheme() async {
    final box = await _themeBox;
    try {
      final isDarkTheme = box.get(_themeBoxName);
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
    final box = await _themeBox;
    try {
      await theme.map(
        light: (_) => box.put(_themeBoxName, false),
        dark: (_) => box.put(_themeBoxName, true),
      );
      emit(theme);
    } catch (e, st) {
      logger.e("Can't update theme. Load old theme", e, st);
      await loadTheme();
    }
  }

  @override
  Future<void> dispose() async {
    await _themeBox.ifLaunched(() => _themeBox.then((value) => value.close()));
    return super.dispose();
  }
}
