import 'package:flutter/material.dart';

/// Scaffold, обернутый в safe area
/// Нужен очень часто, поэтому вынесен в отдельный виджет
class SafeScaffold extends StatelessWidget {
  const SafeScaffold({
    Key key,
    this.appBar,
    this.bottomNavigationBar,
    this.backgroundColor,
    this.body,
    this.floatingActionButton,
  }) : scaffoldKey = key;

  final Key scaffoldKey;
  final PreferredSizeWidget appBar;
  final Widget bottomNavigationBar;
  final Color backgroundColor;
  final Widget body;
  final Widget floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      left: false,
      right: false,
      child: Scaffold(
        key: scaffoldKey,
        appBar: appBar,
        body: body,
        backgroundColor: backgroundColor,
        floatingActionButton: floatingActionButton,
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
