import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

Dio getDefaultDio({
  BaseOptions? baseOptions,
  List<Interceptor> interceptors = const [],
  Level logLevel = Level.debug,
}) {
  final logger = Logger(
    printer: PrettyPrinter(methodCount: 0, printEmojis: false),
    level: logLevel,
  );
  final dio = Dio(BaseOptions(responseType: ResponseType.plain));
  dio.interceptors
    ..add(
      InterceptorsWrapper(
        onRequest: (req, handler) {
          logger.log(
            logLevel,
            "On request in default dio\n"
            "Url: ${req.uri}, Body: \n${req.data}",
          );
          handler.next(req);
        },
        onResponse: (resp, handler) {
          logger.log(
            logLevel,
            "On response in default dio\n"
            "Url: ${resp.realUri}, Body: \n${resp.data}",
          );
          handler.next(resp);
        },
        onError: (error, handler) {
          logger.log(
            logLevel,
            "On error in default dio\n"
            "Url: ${error.response!.realUri}, Error: ${error.error}, Body: \n"
            "${error.response?.data}",
          );
          handler.next(error);
        },
      ),
    )
    ..addAll(interceptors);
  return dio;
}
