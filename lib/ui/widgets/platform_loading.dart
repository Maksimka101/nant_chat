import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nant_client/utils/get_it/get_it.dart';
import 'package:nant_client/utils/platform_info/platform_info.dart';

class PlatformLoading extends StatelessWidget {
  const PlatformLoading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getIt.get<PlatformInfo>().isMaterial
        ? const CircularProgressIndicator()
        : const CupertinoActivityIndicator();
  }
}
