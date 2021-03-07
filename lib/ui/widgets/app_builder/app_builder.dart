import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:nant_client/bloc/localization_bloc/localization_bloc.dart';
import 'package:nant_client/bloc/theme_bloc/theme_bloc.dart';
import 'package:nant_client/generated/l10n.dart';
import 'package:nant_client/ui/router/router.dart';
import 'package:nant_client/ui/widgets/theme/dark_theme.dart';
import 'package:nant_client/ui/widgets/theme/light_theme.dart';
import 'package:nant_client/utils/get_it/get_it.dart';
import 'package:nant_client/utils/layout_info/layout_info.dart';
import 'package:nant_client/utils/platform_info/platform_info.dart';

/// Build [MaterialApp] with [Locale] from [LocalizationBloc]
/// and [ThemeData] from [ThemeBloc]
class AppBuilder extends StatelessWidget {
  const AppBuilder({
    Key key,
    @required this.home,
  }) : super(key: key);
  final Widget home;

  void _updateLayoutInfo(BuildContext context) {
    LayoutInfo.instance = LayoutInfo(
      context: context,
      platformInfo: getIt.get<PlatformInfo>(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: BlocBuilder<LocalizationBloc, LocalizationBlocState>(
        cubit: getIt.get<LocalizationBloc>(),
        builder: (context, localizationState) {
          return localizationState.map(
            initial: (_) => const SizedBox.shrink(),
            localeLoaded: (localeState) {
              return BlocBuilder<ThemeBloc, ThemeBlocState>(
                cubit: getIt.get<ThemeBloc>(),
                builder: (context, appThemeState) {
                  return MaterialApp(
                    onGenerateRoute: DefaultRouter().generateRoute,
                    locale: localeState.locale,
                    localizationsDelegates: const [
                      S.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    supportedLocales: S.delegate.supportedLocales,
                    theme: appThemeState.map(
                      initial: (_) => lightTheme,
                      themeLoaded: (loaded) => loaded.appTheme.map(
                        light: (_) => lightTheme,
                        dark: (_) => darkTheme,
                      ),
                    ),
                    builder: (context, child) {
                      _updateLayoutInfo(context);
                      return child;
                    },
                    home: home,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
