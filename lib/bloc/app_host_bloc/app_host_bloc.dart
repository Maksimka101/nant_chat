import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nant_client/repository/app_host_repository/app_host_repository.dart';

part 'app_host_bloc.freezed.dart';

class AppHostBloc extends Bloc<AppHostBlocEvent, AppHostBlocState> {
  AppHostBloc({required this.appHostRepository}) : super(const _Initial());
  final AppHostRepository appHostRepository;

  @override
  Stream<AppHostBlocState> mapEventToState(AppHostBlocEvent event) {
    return event.map(
      loadAppHost: _mapLoadAppHostToState,
      setAppHost: _mapSetAppHostToState,
    );
  }

  Stream<AppHostBlocState> _mapSetAppHostToState(_SetAppHost event) async* {}

  Stream<AppHostBlocState> _mapLoadAppHostToState(_LoadAppHost event) async* {}
}

@freezed
class AppHostBlocEvent with _$AppHostBlocEvent {
  const factory AppHostBlocEvent.loadAppHost() = _LoadAppHost;

  const factory AppHostBlocEvent.setAppHost({required String host, required bool useSecureConnection}) = _SetAppHost;
}

@freezed
class AppHostBlocState with _$AppHostBlocState {
  const factory AppHostBlocState.initial() = _Initial;

  const factory AppHostBlocState.appHostLoaded() = _AppHostLoaded;

  const factory AppHostBlocState.appHostEmpty() = _AppHostEmpty;
}
