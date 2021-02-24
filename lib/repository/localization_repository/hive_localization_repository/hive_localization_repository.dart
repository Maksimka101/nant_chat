import 'dart:ui';

import 'package:hive/hive.dart';
import 'package:nant_client/repository/localization_repository/hive_localization_repository/models.dart'
    as models;
import 'package:nant_client/repository/localization_repository/localization_repository.dart';
import 'package:nant_client/utils/extensions/object.dart';
import 'package:nant_client/utils/logger/logger.dart';

class HiveLocalizationRepository extends LocalizationRepository {
  HiveLocalizationRepository(Locale defaultLocale) : super(defaultLocale);
  static const _localeBoxName = "LocaleBox";
  Box<models.Locale> _localeBox;
  var _initialized = false;

  @override
  Future<void> initialize() async {
    if (!_initialized) {
      _localeBox = await Hive.openBox(_localeBoxName);
      _initialized = true;
    }
    return super.initialize();
  }

  @override
  Future<void> loadLocale() async {
    assertInitialized(_localeBox != null);
    try {
      final locale = _localeBox.get(_localeBoxName);
      emit(
        locale?.let((it) => Locale(it.languageCode, it.countryCode)) ??
            defaultLocale,
      );
    } catch (e, st) {
      logger.e("Can't load locale", e, st);
      emit(defaultLocale);
    }
  }

  @override
  Future<void> changeLocale(Locale locale) async {
    assertInitialized(_localeBox != null);
    try {
      final mappedLocale = locale?.let((it) => models.Locale(
          languageCode: it.languageCode, countryCode: it.countryCode));
      if (mappedLocale != null) {
        await _localeBox.put(_localeBoxName, mappedLocale);
        emit(locale);
      }
    } catch (e, st) {
      logger.e("Can't load locale", e, st);
      await loadLocale();
      rethrow;
    }
  }

  @override
  Future<void> dispose() async {
    await _localeBox.close();
    return super.dispose();
  }
}
