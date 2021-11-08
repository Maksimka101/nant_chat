import 'package:flutter/material.dart';
import 'package:nant_client/models/room/room.dart';
import 'package:nant_client/ui/widgets/common/circle_user_avatar.dart';
import 'package:nant_client/utils/extensions/object.dart';

class RoomItem extends StatelessWidget {
  const RoomItem({
    Key? key,
    required this.room,
    this.onTap,
  }) : super(key: key);
  final Room room;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final lastMessage = room.messages.where((element) => true).let((it) {
      return it.isEmpty ? null : it.first;
    });
    return ListTile(
      leading: CircleUserAvatar(name: room.name.split(" ").first),
      title: Text(room.name),
      subtitle: Text.rich(
        TextSpan(
          text: "${lastMessage?.sender.name}: ",
          style: const TextStyle(fontWeight: FontWeight.w700),
          children: [
            TextSpan(
              text: lastMessage?.text,
              style: const TextStyle(fontWeight: FontWeight.w400),
            )
          ],
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
      onTap: onTap,
    );
  }
}
