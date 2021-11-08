import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nant_client/repository/app_host_repository/app_host_repository.dart';
import 'package:nant_client/utils/logger/logger.dart';

part 'edit_app_host_bloc.freezed.dart';

class EditAppHostBloc extends Bloc<EditAppHostBlocEvent, EditAppHostBlocState> {
  EditAppHostBloc({required this.appHostRepository}) : super(const Initial());
  final AppHostRepository appHostRepository;

  @override
  Stream<EditAppHostBlocState> mapEventToState(EditAppHostBlocEvent event) {
    return event.map(
      loadAppHost: _mapLoadAppHostToState,
      setAppHost: _mapSetAppHostToState,
    );
  }

  Stream<EditAppHostBlocState> _mapSetAppHostToState(SetAppHost event) async* {
    try {
      yield const HostSetStarted();
      final httpHost = "${event.useSecureConnection ? "https" : "http"}://${event.host}";
      final wsHost = "${event.useSecureConnection ? "wss" : "ws"}://${event.host}";

      await appHostRepository.save(AppHostInfo(hostName: httpHost, webSocketHostName: wsHost));
      yield AppHostLoaded(appHostRepository.data);
    } catch (e, st) {
      logger.e("_mapSetAppHostToState", e, st);
    }
  }

  Stream<EditAppHostBlocState> _mapLoadAppHostToState(LoadAppHost event) async* {
    try {
      yield const Initial();
      await appHostRepository.load();
      yield AppHostLoaded(appHostRepository.data);
    } catch (e, st) {
      logger.e("_mapLoadAppHostToState", e, st);
      yield const Error();
    }
  }
}

@freezed
class EditAppHostBlocEvent with _$EditAppHostBlocEvent {
  const factory EditAppHostBlocEvent.loadAppHost() = LoadAppHost;

  const factory EditAppHostBlocEvent.setAppHost({
    required String host,
    required bool useSecureConnection,
  }) = SetAppHost;
}

@freezed
class EditAppHostBlocState with _$EditAppHostBlocState {
  const factory EditAppHostBlocState.initial() = Initial;

  const factory EditAppHostBlocState.hostSetStarted() = HostSetStarted;

  const factory EditAppHostBlocState.hostSetSuccessfully(AppHostInfo? hostInfo) = AppHostLoaded;

  const factory EditAppHostBlocState.error() = Error;
}
