import 'package:nant_client/generated/l10n.dart';

class AuthorizationValidator {
  AuthorizationValidator({this.host});
  String? name;
  String? host;

  bool get valid => name != null;

  String? validateUserName(String? name) {
    this.name = null;

    if (name == null || name.length < 4) {
      return S.current.userNameMustHaveAtLeast4Character;
    } else if (name.length > 16) {
      return S.current.nameMustHaveNoMoreThan16Character;
    }

    this.name = name;
    return null;
  }

  String? validateHost(String? host) {
    // To make [valid] getter works correctly
    this.host = null;

    if (host == null || host.length < 4) {
      return S.current.hostIsTooShort;
    }

    this.host = host;
    return null;
  }
}
