import 'package:flutter/material.dart';
import 'package:nant_client/models/room/room.dart';
import 'package:nant_client/ui/screens/create_room_screen/create_room_screen.dart';
import 'package:nant_client/ui/widgets/chat_widget/chat_widget.dart';
import 'package:nant_client/ui/widgets/layouts/adaptive_app_bar.dart';
import 'package:nant_client/ui/widgets/layouts/safe_scaffold.dart';
import 'package:nant_client/generated/l10n.dart';
import 'package:nant_client/ui/widgets/rooms_screen_widgets/rooms_list.dart';

class DesktopRoomsScreen extends StatefulWidget {
  const DesktopRoomsScreen();

  @override
  _DesktopRoomsScreenState createState() => _DesktopRoomsScreenState();
}

class _DesktopRoomsScreenState extends State<DesktopRoomsScreen> {
  Room _selectedRoom;

  void _onCreateNewRoomRequested(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }

  void _onRoomSelected(Room room) {
    _selectedRoom = room;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    return SafeScaffold(
      body: Column(
        children: [
          AdaptiveAppBar(
            title: Text(_selectedRoom?.name ?? localization.nantChat),
            actions: [
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () => _onCreateNewRoomRequested(context),
              )
            ],
          ),
          Flexible(
            child: Row(
              children: [
                Expanded(
                  child: RoomsList(onRoomSelected: _onRoomSelected),
                ),
                const VerticalDivider(width: 1),
                Expanded(
                  flex: 2,
                  child: _selectedRoom != null
                      ? ChatWidget(
                          roomName: _selectedRoom.name,
                        )
                      : const _UnselectedRoom(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _UnselectedRoom extends StatelessWidget {
  const _UnselectedRoom();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(S.of(context).pleaseSelectRoom),
    );
  }
}
