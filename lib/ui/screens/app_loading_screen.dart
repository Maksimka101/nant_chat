import 'package:flutter/material.dart';
import 'package:nant_client/generated/l10n.dart';
import 'package:nant_client/ui/widgets/layouts/safe_scaffold.dart';
import 'package:nant_client/ui/widgets/platform_loading.dart';

class AppLoadingScreen extends StatelessWidget {
  const AppLoadingScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      appBar: AppBar(
        title: Text(S.of(context).nantChat),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(S.of(context).waitASecondPlease),
            const SizedBox(height: 10),
            const PlatformLoading(),
          ],
        ),
      ),
    );
  }
}
