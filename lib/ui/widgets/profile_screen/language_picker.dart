import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nant_client/bloc/localization_bloc/localization_bloc.dart';
import 'package:nant_client/generated/l10n.dart';
import 'package:nant_client/models/app_config/app_config.dart';
import 'package:nant_client/utils/extensions/locale.dart';
import 'package:nant_client/utils/get_it/get_it.dart';

class LanguagePicker extends StatelessWidget {
  const LanguagePicker({
    Key? key,
  }) : super(key: key);

  void _onChangeLanguage(BuildContext context) {
    showLanguagePicker(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(S.of(context).currentLanguage),
      subtitle: Text(S.of(context).tapToChangeLanguage),
      trailing: BlocBuilder<LocalizationBloc, LocalizationBlocState>(
        bloc: getIt.get<LocalizationBloc>(),
        builder: (context, state) {
          return state.map(
            initial: (_) => const Text("?"),
            localeLoaded: (loaded) => Text(
              loaded.locale.translated,
            ),
          );
        },
      ),
      onTap: () => _onChangeLanguage(context),
    );
  }
}

void showLanguagePicker({required BuildContext context}) {
  void onPick(Locale locale) {
    getIt.get<LocalizationBloc>().add(LocaleChanged(locale: locale));
    Navigator.pop(context);
  }

  showModalBottomSheet(
    context: context,
    builder: (context) {
      return SingleChildScrollView(
        child: Column(
          children: getIt
              .get<AppConfig>()
              .supportedLocales
              .map(
                (e) => ListTile(
                  onTap: () => onPick(e),
                  title: Text(e.translated),
                  leading: Image.asset(e.flagPath!),
                ),
              )
              .toList(),
        ),
      );
    },
  );
}
