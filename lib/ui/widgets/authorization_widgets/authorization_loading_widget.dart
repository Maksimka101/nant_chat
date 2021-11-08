import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nant_client/bloc/authorization_bloc/authorization_bloc.dart';
import 'package:nant_client/utils/get_it/get_it.dart';

/// This widget shows [LinearProgressIndicator] when authorization creation in progress
class AuthorizationLoadingWidget extends StatelessWidget {
  const AuthorizationLoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthorizationBloc, AuthorizationBlocState>(
      bloc: getIt(),
      builder: (context, state) => state.maybeMap(
        orElse: () => const SizedBox.shrink(),
        authorizationStarted: (_) => const LinearProgressIndicator(),
      ),
    );
  }
}
