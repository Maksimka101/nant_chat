import 'package:nant_client/generated/l10n.dart';

class AuthorizationValidator {
  String name;

  String validateUserName(String name) {
    if (name.isEmpty || name.length < 4) {
      return S.current.userNameMustHaveAtLeast4Character;
    } else if (name.length > 16) {
      return S.current.nameMustHaveNoMoreThan16Character;
    }
    this.name = name;
    return null;
  }
}
