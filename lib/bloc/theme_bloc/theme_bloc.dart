import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nant_client/models/app_theme/app_theme.dart';
import 'package:nant_client/repository/theme_repository/theme_repository.dart';
import 'package:nant_client/utils/logger/logger.dart';

part 'theme_bloc.freezed.dart';

@freezed
class ThemeBlocEvent with _$ThemeBlocEvent {
  const factory ThemeBlocEvent.themeLoadStarted() = ThemeLoadStarted;

  const factory ThemeBlocEvent.themeSwitched() = ThemeSwitched;

  const factory ThemeBlocEvent.themeLoaded(AppTheme theme) = ThemeLoadedEvent;
}

@freezed
class ThemeBlocState with _$ThemeBlocState {
  const factory ThemeBlocState.initial() = Initial;

  const factory ThemeBlocState.themeLoaded(AppTheme appTheme) = ThemeLoaded;
}

class ThemeBloc extends Bloc<ThemeBlocEvent, ThemeBlocState> {
  ThemeBloc({
    required this.themeRepository,
  }) : super(const Initial());
  final ThemeRepository themeRepository;
  StreamSubscription<AppTheme>? _themeSubscription;

  @override
  Stream<ThemeBlocState> mapEventToState(ThemeBlocEvent event) async* {
    yield* event.map(
      themeLoaded: _onThemeLoadedEvent,
      themeSwitched: _onThemeSwitchedEvent,
      themeLoadStarted: _onThemeLoadStartedEvent,
    );
  }

  Stream<ThemeBlocState> _onThemeLoadStartedEvent(
    ThemeLoadStarted event,
  ) async* {
    try {
      await _themeSubscription?.cancel();
      _themeSubscription = themeRepository.dataStream.listen((event) {
        add(ThemeLoadedEvent(event));
      });
      await themeRepository.loadTheme();
    } catch (e, st) {
      logger.d("Failed to load theme", e, st);
    }
  }

  Stream<ThemeBlocState> _onThemeSwitchedEvent(
    ThemeSwitched event,
  ) async* {
    try {
      await themeRepository.updateTheme(
        themeRepository.data!.map(
          light: (_) => const AppDarkTheme(),
          dark: (_) => const AppLightTheme(),
        ),
      );
    } catch (e, st) {
      logger.d("Failed to switch theme", e, st);
    }
  }

  Stream<ThemeBlocState> _onThemeLoadedEvent(
    ThemeLoadedEvent event,
  ) async* {
    yield ThemeLoaded(event.theme);
  }

  @override
  Future<void> close() async {
    await _themeSubscription?.cancel();
    return super.close();
  }
}
