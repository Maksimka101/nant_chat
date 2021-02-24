import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:nant_client/ui/screens/chat_screen/chat_screen.dart';
import 'package:nant_client/ui/screens/create_room_screen/create_room_screen.dart';

class DefaultRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ChatScreen.routeName:
        return CupertinoPageRoute(
          builder: (_) => ChatScreen(
            roomName: (settings.arguments as ChatScreenArgument).roomName,
          ),
        );
      case CreateRoomScreen.routeName:
        return CupertinoPageRoute(builder: (_) => const CreateRoomScreen());
      default:
        return null;
    }
  }
}
