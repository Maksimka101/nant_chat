import 'package:flutter/material.dart';
import 'package:nant_client/utils/get_it/get_it.dart';
import 'package:nant_client/utils/layout_info/layout_info.dart';
import 'package:nant_client/utils/platform_info/platform_info.dart';

/// Build standard [AppBar] for mobile platforms and for mobile form factor
/// Mobile form factor - not [LayoutInfo].isDesktopLayout
/// Build [AppBar] with [_desktopAppBarHeight] for desktop form factor
/// Build [AppBar] with [_desktopAppBarHeight] + [_macOsToolBarHeight] if
/// implicit or explicit leading exists because it is covered by Mac Os's controls
class AdaptiveAppBar extends StatelessWidget {
  const AdaptiveAppBar({
    this.title,
    this.actions,
    this.leading,
  });

  final Widget title;
  final List<Widget> actions;
  final Widget leading;

  static const _desktopAppBarHeight = 45.0;
  static const _macOsToolBarHeight = 18.0;

  bool _addSpaceUnderAppBar(PlatformInfo platformInfo, Widget leading) {
    return leading != null && platformInfo.isMacOs;
  }

  Widget _buildLeading(BuildContext context) {
    final canPop = ModalRoute.of(context)?.canPop ?? false;
    if (canPop && leading == null) {
      return const BackButton();
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final platformInfo = getIt.get<PlatformInfo>();
    final _centerTitle = platformInfo.isMacOsDevice || platformInfo.isIosDevice;
    final isDesktopLayout = LayoutInfo.instance.isDesktopLayout;
    final leading = _buildLeading(context);
    final theme = Theme.of(context);
    final addSpaceUnderAppBar = _addSpaceUnderAppBar(platformInfo, leading);

    return ColoredBox(
      color: theme.appBarTheme.color,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (addSpaceUnderAppBar)
            const SizedBox(
              height: _macOsToolBarHeight,
            ),
          AppBar(
            title: title,
            actions: actions,
            leading: leading,
            automaticallyImplyLeading: false,
            centerTitle: _centerTitle,
            toolbarHeight:
                isDesktopLayout ? _desktopAppBarHeight : kToolbarHeight,
          ),
        ],
      ),
    );
  }
}
