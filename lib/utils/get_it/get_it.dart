import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

/// Extension on get it for some special cases
/// This extension placed here to be imported with [getIt]
extension GetItExtension on GetIt {
  /// Register lazy singleton bloc with dispose function
  void registerLazySingletonBloc<T extends Bloc<Object, Object>>(
    FactoryFunc<T> factoryFunc,
  ) {
    registerLazySingleton<T>(factoryFunc, dispose: (bloc) => bloc.close());
  }

  void registerSingletonBloc<T extends Bloc<Object, Object>>(T bloc) {
    registerSingleton<T>(bloc, dispose: (bloc) => bloc.close());
  }
}
