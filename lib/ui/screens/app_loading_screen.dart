import 'package:flutter/material.dart';
import 'package:nant_client/generated/l10n.dart';
import 'package:nant_client/ui/widgets/layouts/adaptive_app_bar.dart';
import 'package:nant_client/ui/widgets/layouts/safe_scaffold.dart';
import 'package:nant_client/ui/widgets/platform_loading.dart';

class AppLoadingScreen extends StatelessWidget {
  const AppLoadingScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AdaptiveAppBar(
            title: Text(S.of(context).nantChat),
          ),
          const Spacer(),
          Text(S.of(context).waitASecondPlease),
          const SizedBox(height: 10),
          const PlatformLoading(),
          const Spacer(),
        ],
      ),
    );
  }
}
