import 'package:flutter/widgets.dart';
import 'package:nant_client/utils/layout_info/layout_info.dart';

/// Helps build desktop or mobile layout
class DesktopLayoutBuilder extends StatelessWidget {
  const DesktopLayoutBuilder({
    Key key,
    @required this.builder,
  }) : super(key: key);
  final Widget Function(BuildContext context, bool desktop) builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, _) {
      return builder(context, LayoutInfo.instance.isDesktopLayout);
    });
  }
}

/// It is maybe helpful to build different widgets for touch and mouse interface
class DesktopPlatformBuilder extends StatelessWidget {
  const DesktopPlatformBuilder({
    Key key,
    @required this.builder,
  }) : super(key: key);
  final Widget Function(BuildContext context, bool desktop) builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, _) {
      return builder(context, LayoutInfo.instance.isDesktopPlatform);
    });
  }
}
