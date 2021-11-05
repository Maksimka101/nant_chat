import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nant_client/utils/logger/logger.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    logger.e("Error in $bloc", error, stackTrace);
    super.onError(bloc, error, stackTrace);
  }
}
