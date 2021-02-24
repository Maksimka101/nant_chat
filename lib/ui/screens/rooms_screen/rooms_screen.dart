import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nant_client/bloc/rooms_bloc/rooms_bloc.dart';
import 'package:nant_client/generated/l10n.dart';
import 'package:nant_client/models/room/room.dart';
import 'package:nant_client/ui/screens/chat_screen/chat_screen.dart';
import 'package:nant_client/ui/screens/create_room_screen/create_room_screen.dart';
import 'package:nant_client/ui/widgets/layouts/safe_scaffold.dart';
import 'package:nant_client/ui/widgets/platform_loading.dart';
import 'package:nant_client/ui/widgets/rooms_screen_widgets/room_item.dart';
import 'package:nant_client/utils/get_it/get_it.dart';

class RoomsScreen extends StatelessWidget {
  const RoomsScreen({
    Key key,
  }) : super(key: key);

  void _onCreateNewRoomRequested(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    return SafeScaffold(
      appBar: AppBar(
        title: Text(localization.nantChat),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => _onCreateNewRoomRequested(context),
          )
        ],
      ),
      body: BlocBuilder<RoomsBloc, RoomsBlocState>(
        cubit: getIt.get<RoomsBloc>(),
        builder: (context, state) {
          return state.map(
            initial: (_) => const Center(child: PlatformLoading()),
            roomsLoaded: (loaded) => _RoomsScreenBody(rooms: loaded.rooms),
          );
        },
      ),
    );
  }
}

class _RoomsScreenBody extends StatelessWidget {
  const _RoomsScreenBody({
    Key key,
    @required this.rooms,
  }) : super(key: key);
  final List<Room> rooms;

  void _onRoomSelected(BuildContext context, Room room) {
    Navigator.pushNamed(
      context,
      ChatScreen.routeName,
      arguments: ChatScreenArgument(room.name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final room = rooms[index];
        return RoomItem(
          room: room,
          onTap: () => _onRoomSelected(context, room),
        );
      },
      separatorBuilder: (context, index) => const Divider(height: 1),
      itemCount: rooms.length,
    );
  }
}
