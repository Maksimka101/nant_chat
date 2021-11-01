import 'package:flutter/material.dart';
import 'package:nant_client/generated/l10n.dart';
import 'package:nant_client/models/room/room.dart';
import 'package:nant_client/ui/screens/chat_screen/chat_screen.dart';
import 'package:nant_client/ui/screens/create_room_screen/create_room_screen.dart';
import 'package:nant_client/ui/widgets/layouts/adaptive_app_bar.dart';
import 'package:nant_client/ui/widgets/layouts/safe_scaffold.dart';
import 'package:nant_client/ui/widgets/rooms_screen_widgets/rooms_list.dart';

class MobileRoomsScreen extends StatelessWidget {
  const MobileRoomsScreen();

  void _onCreateNewRoomRequested(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }

  void _onRoomSelected(BuildContext context, Room room) {
    Navigator.pushNamed(
      context,
      ChatScreen.routeName,
      arguments: ChatScreenArgument(room.name),
    );
  }

  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    return SafeScaffold(
      body: Column(
        children: [
          AdaptiveAppBar(
            title: Text(localization.nantChat),
            actions: [
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () => _onCreateNewRoomRequested(context),
              )
            ],
          ),
          Flexible(
            child: RoomsList(
              onRoomSelected: (room) => _onRoomSelected(context, room),
            ),
          ),
        ],
      ),
    );
  }
}
