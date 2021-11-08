import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nant_client/bloc/localization_bloc/localization_bloc.dart';
import 'package:nant_client/utils/get_it/get_it.dart';

/// Listen for [Locale] change with [LocalizationBloc]
class AppLocalizationWidget extends StatelessWidget {
  const AppLocalizationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalizationBloc, LocalizationBlocState>(
      bloc: getIt.get<LocalizationBloc>(),
      builder: (context, state) {
        return;
      } as Widget Function(BuildContext, LocalizationBlocState),
    );
  }
}
