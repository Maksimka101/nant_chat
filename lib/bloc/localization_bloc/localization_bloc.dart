import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nant_client/generated/l10n.dart';
import 'package:nant_client/repository/localization_repository/localization_repository.dart';
import 'package:nant_client/utils/logger/logger.dart';

part 'localization_bloc.freezed.dart';

@freezed
abstract class LocalizationBlocEvent with _$LocalizationBlocEvent {
  const factory LocalizationBlocEvent.localizationLoadStarted() =
      LocalizationLoadStarted;

  const factory LocalizationBlocEvent.localeChanged({
    @required Locale locale,
  }) = LocaleChanged;

  /// This event usually called from bloc when localization loaded.
  const factory LocalizationBlocEvent.localeLoaded(
    Locale locale,
  ) = LocaleLoadedEvent;
}

@freezed
abstract class LocalizationBlocState with _$LocalizationBlocState {
  const factory LocalizationBlocState.initial() = Initial;

  const factory LocalizationBlocState.localeLoaded(Locale locale) =
      LocaleLoaded;
}

class LocalizationBloc
    extends Bloc<LocalizationBlocEvent, LocalizationBlocState> {
  LocalizationBloc({
    @required this.localizationRepository,
  }) : super(const Initial());

  final LocalizationRepository localizationRepository;
  StreamSubscription<Locale> _localeSubscription;

  @override
  Stream<LocalizationBlocState> mapEventToState(
      LocalizationBlocEvent event) async* {
    yield* event.map(
      localeLoaded: (loaded) => Stream.value(LocaleLoaded(loaded.locale)),
      localeChanged: _onLocaleChangedEvent,
      localizationLoadStarted: _onLocalizationLoadStartedEvent,
    );
  }

  Stream<LocalizationBlocState> _onLocalizationLoadStartedEvent(
    LocalizationLoadStarted event,
  ) async* {
    await _localeSubscription?.cancel();
    _localeSubscription =
        localizationRepository.dataStream.listen((locale) async {
      await S.load(locale);
      add(LocaleLoadedEvent(locale));
    });
    await localizationRepository.loadLocale();
  }

  Stream<LocalizationBlocState> _onLocaleChangedEvent(
    LocaleChanged event,
  ) async* {
    try {
      await localizationRepository.changeLocale(event.locale);
    } catch (e, st) {
      logger.d("Failed to change locale", e, st);
    }
  }

  @override
  Future<void> close() async {
    await _localeSubscription?.cancel();
    return super.close();
  }
}
