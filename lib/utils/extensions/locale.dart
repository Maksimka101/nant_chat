import 'dart:ui';

import 'package:nant_client/generated/l10n.dart';

extension LocaleToString on Locale {
  String get translated {
    switch (languageCode) {
      case 'ru':
        return S.current.russian;
      case 'en':
        return S.current.english;
      default:
        return 'unknown';
    }
  }

  String get flagPath {
    switch (languageCode) {
      case 'ru':
        return "assets/flags/ru.png";
      case 'en':
        return "assets/flags/en.png";
      default:
        return null;
    }
  }
}
