import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nant_client/bloc/app_host_bloc/edit_app_host_bloc.dart';
import 'package:nant_client/bloc/edit_user_bloc/edit_user_bloc.dart';
import 'package:nant_client/models/user/user.dart';
import 'package:nant_client/repository/room_repository/room_repository.dart';
import 'package:nant_client/utils/logger/logger.dart';

part 'authorization_bloc.freezed.dart';

class AuthorizationBloc extends Bloc<AuthorizationBlocEvent, AuthorizationBlocState> {
  AuthorizationBloc({
    required this.editUserBloc,
    required this.editAppHostBloc,
    required this.roomsRepository,
  }) : super(const Initial()) {
    on<Authorize>((event, emit) async {
      emit(const AuthorizationStarted());

      // Create user
      editUserBloc.add(UserCreated(createUser: event.createUser));
      final userEditState = await editUserBloc.stream.firstWhere(
        (element) => element.maybeMap(
          orElse: () => false,
          userCreatedSuccessfully: (_) => true,
          error: (_) => true,
        ),
      );

      await userEditState.maybeMap(
        orElse: () {
          emit(const FailedToAuthorize());
        },
        // Save app host info when user created successfully
        userCreatedSuccessfully: (_) async {
          editAppHostBloc.add(SetAppHost(host: event.host, useSecureConnection: event.useSecureConnection));
          final hostEditState = await editAppHostBloc.stream.firstWhere(
            (element) => element.maybeMap(
              orElse: () => false,
              error: (_) => true,
              hostSetSuccessfully: (_) => true,
            ),
          );

          await hostEditState.maybeMap(
            orElse: () {
              emit(const FailedToAuthorize());
            },
            // Load rooms when app host saved successfully
            hostSetSuccessfully: (_) async {
              try {
                await roomsRepository.loadRooms();

                emit(const Authorized());
              } catch (e, st) {
                logger.e("Failed to load rooms", e, st);
                emit(const FailedToAuthorize());
              }
            },
          );
        },
      );
    });
  }

  final EditUserBloc editUserBloc;
  final EditAppHostBloc editAppHostBloc;
  final RoomsRepository roomsRepository;
}

@freezed
class AuthorizationBlocEvent with _$AuthorizationBlocEvent {
  const factory AuthorizationBlocEvent.authorize({
    required CreateUser createUser,
    required String host,
    required bool useSecureConnection,
  }) = Authorize;
}

@freezed
class AuthorizationBlocState with _$AuthorizationBlocState {
  const factory AuthorizationBlocState.initial() = Initial;

  const factory AuthorizationBlocState.authorizationStarted() = AuthorizationStarted;
  const factory AuthorizationBlocState.authorized() = Authorized;
  const factory AuthorizationBlocState.failedToAuthorize() = FailedToAuthorize;
}
