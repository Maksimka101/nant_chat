import 'dart:ui';

import 'package:hive/hive.dart';
import 'package:nant_client/repository/localization_repository/hive_localization_repository/models.dart' as models;
import 'package:nant_client/repository/localization_repository/localization_repository.dart';
import 'package:nant_client/utils/extensions/object.dart';
import 'package:nant_client/utils/hive/hive_box_utils.dart';
import 'package:nant_client/utils/logger/logger.dart';

class HiveLocalizationRepository extends LocalizationRepository {
  HiveLocalizationRepository(Locale defaultLocale) : super(defaultLocale);
  static const _localeBoxName = "LocaleBox";
  late final _localeBox = openHiveBox<models.Locale>(_localeBoxName);

  @override
  Future<void> loadLocale() async {
    try {
      final box = await _localeBox;
      final locale = box.get(_localeBoxName);
      emit(locale?.let((it) => Locale(it.languageCode, it.countryCode)) ?? defaultLocale);
    } catch (e, st) {
      logger.e("Can't load locale", e, st);
      emit(defaultLocale);
    }
  }

  @override
  Future<void> changeLocale(Locale locale) async {
    try {
      final box = await _localeBox;
      await box.put(
        _localeBoxName,
        models.Locale(
          languageCode: locale.languageCode,
          countryCode: locale.countryCode,
        ),
      );
      emit(locale);
    } catch (e, st) {
      logger.e("Can't load locale", e, st);
      await loadLocale();
      rethrow;
    }
  }

  @override
  Future<void> dispose() async {
    await _localeBox.ifLaunched(() => _localeBox.then((value) => value.close()));
    return super.dispose();
  }
}
