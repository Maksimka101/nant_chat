import 'package:nant_client/generated/l10n.dart';

class CreateRoomValidator {
  String? roomName;

  String? validateRoomName(String? roomName) {
    if (roomName!.isEmpty) {
      return S.current.pleaseEnterRoomName;
    } else if (roomName.length < 4) {
      return S.current.roomNameMustHaveAtLeast4Character;
    } else if (roomName.length > 25) {
      return S.current.roomMustHaveNoMoreThan16Character;
    }
    this.roomName = roomName;
    return null;
  }
}
