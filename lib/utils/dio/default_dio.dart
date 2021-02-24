import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

Dio getDefaultDio({
  BaseOptions baseOptions,
  List<Interceptor> interceptors = const [],
  Level logLevel = Level.debug,
}) {
  final logger = Logger(
    printer: PrettyPrinter(methodCount: 0, printEmojis: false),
    level: logLevel,
  );
  final dio = Dio(BaseOptions(responseType: ResponseType.plain));
  dio.interceptors
    ..add(InterceptorsWrapper(
      onRequest: (req) {
        logger.log(
          logLevel,
          "On request in default dio\n"
          "Url: ${req.uri}, Body: \n${req.data}",
        );
        return req;
      },
      onResponse: (resp) {
        logger.log(
          logLevel,
          "On response in default dio\n"
          "Url: ${resp.request.uri}, Body: \n${resp.data}",
        );
        return resp;
      },
      onError: (error) {
        logger.log(
          logLevel,
          "On error in default dio\n"
          "Url: ${error.request.uri}, Error: ${error.error}, Body: \n"
          "${error.response?.data}",
        );
      },
    ))
    ..addAll(interceptors);
  return dio;
}
