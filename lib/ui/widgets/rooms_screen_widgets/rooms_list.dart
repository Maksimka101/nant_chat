import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nant_client/bloc/rooms_bloc/rooms_bloc.dart';
import 'package:nant_client/models/room/room.dart';
import 'package:nant_client/ui/widgets/platform_loading.dart';
import 'package:nant_client/ui/widgets/rooms_screen_widgets/room_item.dart';
import 'package:nant_client/utils/get_it/get_it.dart';

class RoomsList extends StatelessWidget {
  const RoomsList({
    Key? key,
    required this.onRoomSelected,
  }) : super(key: key);

  final void Function(Room room) onRoomSelected;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomsBloc, RoomsBlocState>(
      bloc: getIt.get<RoomsBloc>(),
      builder: (context, state) {
        return state.map(
          initial: (_) => const Center(child: PlatformLoading()),
          roomsLoaded: (loaded) => _RoomListBody(
            rooms: loaded.rooms,
            onRoomSelected: onRoomSelected,
          ),
        );
      },
    );
  }
}

class _RoomListBody extends StatelessWidget {
  const _RoomListBody({
    Key? key,
    required this.onRoomSelected,
    required this.rooms,
  }) : super(key: key);
  final List<Room> rooms;
  final void Function(Room room) onRoomSelected;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        final room = rooms[index];
        return RoomItem(
          room: room,
          onTap: () => onRoomSelected(room),
        );
      },
      separatorBuilder: (context, index) => const Divider(
        height: 1,
        indent: 68,
        endIndent: 6,
      ),
      itemCount: rooms.length,
    );
  }
}
