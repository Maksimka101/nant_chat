import 'package:nant_client/generated/l10n.dart';

class MessageValidator {
  String message;

  String validateMessage(String message) {
    if (message.isEmpty) {
      return S.current.enterYourMessage;
    }
    this.message = message;
    return null;
  }
}
