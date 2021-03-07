import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:nant_client/ui/widgets/chat_widget/chat_widget.dart';
import 'package:nant_client/ui/widgets/layouts/adaptive_app_bar.dart';
import 'package:nant_client/ui/widgets/layouts/adaptive_layout_builder.dart';
import 'package:nant_client/ui/widgets/layouts/safe_scaffold.dart';
import 'package:nant_client/utils/layout_info/layout_info.dart';

/// Screen with [ChatWidget] and [AdaptiveAppBar] with title
/// This screen must be opened only for mobile layout
/// If [LayoutInfo] will change to the desktop layout this page will be popped
class ChatScreen extends StatelessWidget {
  const ChatScreen({
    @required this.roomName,
  });

  static const routeName = "/ChatScreenRoute";
  final String roomName;

  void _popChatScreen(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      Navigator.popUntil(context, ModalRoute.withName('/'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return DesktopLayoutBuilder(builder: (context, desktop) {
      if (desktop) {
        _popChatScreen(context);
      }
      return SafeScaffold(
        body: Column(
          children: [
            AdaptiveAppBar(
              title: Text(roomName),
            ),
            Flexible(
              child: ChatWidget(
                roomName: roomName,
              ),
            ),
          ],
        ),
      );
    });
  }
}

class ChatScreenArgument {
  ChatScreenArgument(this.roomName);

  final String roomName;
}
