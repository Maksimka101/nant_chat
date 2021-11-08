import 'dart:ui';

import 'package:nant_client/repository/base_repository.dart';

/// This repository store app localization
abstract class LocalizationRepository extends BaseRepository<Locale> {
  LocalizationRepository(this.defaultLocale);

  /// This locale used when custom location is not set
  final Locale defaultLocale;

  /// It mustn't throw any exceptions. Otherwise it must emit [defaultLocale]
  Future<void> loadLocale();

  /// This function may throws exceptions
  Future<void> changeLocale(Locale locale);

  /// There is no need to clean locale on sign out
  @override
  Future<void> clear() async {}
}
