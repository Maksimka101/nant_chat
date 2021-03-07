import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nant_client/ui/screens/rooms_screen/desktop_rooms_screen.dart';
import 'package:nant_client/ui/screens/rooms_screen/mobile_rooms_screen.dart';
import 'package:nant_client/ui/widgets/layouts/adaptive_layout_builder.dart';

class RoomsScreen extends StatelessWidget {
  const RoomsScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DesktopLayoutBuilder(builder: (context, desktop) {
      if (desktop) {
        return const DesktopRoomsScreen();
      } else {
        return const MobileRoomsScreen();
      }
    });
  }
}
