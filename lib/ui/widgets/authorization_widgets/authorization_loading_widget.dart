import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nant_client/bloc/edit_user_bloc/edit_user_bloc.dart';
import 'package:nant_client/utils/get_it/get_it.dart';

/// This widget shows [LinearProgressIndicator] when user creation in progress
class AuthorizationLoadingWidget extends StatelessWidget {
  const AuthorizationLoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditUserBloc, EditUserBlocState>(
      bloc: getIt.get<EditUserBloc>(),
      builder: (context, state) {
        return state.maybeMap(
          userCreationStarted: (_) => const LinearProgressIndicator(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
