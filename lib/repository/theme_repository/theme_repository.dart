import 'package:nant_client/models/app_theme/app_theme.dart';
import 'package:nant_client/repository/base_repository.dart';

abstract class ThemeRepository extends BaseRepository<AppTheme> {
  ThemeRepository({required this.defaultTheme});

  final AppTheme defaultTheme;

  Future<void> loadTheme();

  Future<void> updateTheme(AppTheme theme);

  /// There is no need to clean theme on sign out
  @override
  Future<void> clear() async {}
}
