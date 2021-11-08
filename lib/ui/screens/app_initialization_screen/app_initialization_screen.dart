import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nant_client/bloc/initialize_bloc/initialize_bloc.dart';
import 'package:nant_client/bloc/user_bloc/user_bloc.dart';
import 'package:nant_client/ui/screens/app_loading_screen.dart';
import 'package:nant_client/ui/screens/authorization_screen/authorization_screen.dart';
import 'package:nant_client/ui/screens/main_app_screen/main_app_screen.dart';
import 'package:nant_client/utils/get_it/get_it.dart';

class AppInitializationScreen extends StatelessWidget {
  const AppInitializationScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InitializeBloc, InitializeBlocState>(
      bloc: getIt.get<InitializeBloc>(),
      builder: (context, state) {
        return state.map(
          initialized: (_) => BlocConsumer<UserBloc, UserBlocState>(
            bloc: getIt<UserBloc>(),
            listener: (context, state) {
              // If user is un authorized app must pop him to the root
              state.maybeMap(
                unAuthorized: (_) {
                  Navigator.popUntil(context, ModalRoute.withName("/"));
                },
                orElse: () {},
              );
            },
            builder: (context, userState) {
              return userState.map(
                initial: (_) => const AppLoadingScreen(),
                authorized: (_) => const MainAppScreen(),
                unAuthorized: (_) => const AuthorizationScreen(),
              );
            },
          ),
          unInitialized: (_) => const AppLoadingScreen(),
        );
      },
    );
  }
}
