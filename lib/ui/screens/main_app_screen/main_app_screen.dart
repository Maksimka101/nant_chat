import 'package:flutter/material.dart';
import 'package:nant_client/ui/screens/main_app_screen/main_desktop_app_screen.dart';
import 'package:nant_client/ui/screens/main_app_screen/main_mobile_app_screen.dart';
import 'package:nant_client/ui/widgets/layouts/adaptive_layout_builder.dart';

/// Main app screen with list of rooms
class MainAppScreen extends StatelessWidget {
  const MainAppScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return DesktopLayoutBuilder(
      builder: (context, desktop) {
        if (desktop) {
          return const MainDesktopAppScreen();
        } else {
          return MainMobileAppScreen();
        }
      },
    );
  }
}
