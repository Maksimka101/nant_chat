import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nant_client/utils/logger/logger.dart';

part 'sign_out_bloc.freezed.dart';

typedef RepositoryCleaner = FutureOr<void> Function();

class SignOutBloc extends Bloc<SignOutBlocEvent, SignOutBlocState> {
  SignOutBloc({required this.repositoryCleaners}) : super(const Initial()) {
    on<SignOut>((event, emit) async {
      try {
        emit(const InProgress());
        for (final cleaner in repositoryCleaners) {
          await cleaner();
        }
        emit(const CleanedSuccessfully());
      } catch (e, st) {
        logger.e("Failed to clean repositories", e, st);
        emit(const Error());
      }
    });
  }

  final List<RepositoryCleaner> repositoryCleaners;
}

@freezed
class SignOutBlocEvent with _$SignOutBlocEvent {
  const factory SignOutBlocEvent.signOut() = SignOut;
}

@freezed
class SignOutBlocState with _$SignOutBlocState {
  const factory SignOutBlocState.initial() = Initial;
  const factory SignOutBlocState.inProgress() = InProgress;
  const factory SignOutBlocState.cleanedSuccessfully() = CleanedSuccessfully;
  const factory SignOutBlocState.error() = Error;
}
