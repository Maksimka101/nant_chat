import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nant_client/bloc/theme_bloc/theme_bloc.dart';
import 'package:nant_client/generated/l10n.dart';
import 'package:nant_client/utils/get_it/get_it.dart';

class ThemeSwitcher extends StatefulWidget {
  const ThemeSwitcher({
    Key key,
  }) : super(key: key);

  @override
  _ThemeSwitcherState createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  void _onChangeTheme() {
    getIt.get<ThemeBloc>().add(const ThemeSwitched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeBlocState>(
      cubit: getIt.get<ThemeBloc>(),
      builder: (context, state) {
        return state.maybeMap(
          themeLoaded: (loaded) {
            final isDarkTheme = loaded.appTheme.map(
              light: (_) => false,
              dark: (_) => true,
            );
            return SwitchListTile(
              value: isDarkTheme,
              onChanged: (_) => _onChangeTheme(),
              title: Text(S.of(context).enableDarkTheme),
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
