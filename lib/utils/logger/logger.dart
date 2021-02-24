import 'package:logger/logger.dart';

/// Static logger instance
/// Just write
/// ```
///   logger.d("Debug message!!!", Exception("Optional error"), stacktrace);
/// ```
final logger = initializeLogger();

Logger initializeLogger() {
  return Logger(
    printer: PrettyPrinter(
      printEmojis: false,
      colors: false,
      methodCount: 4,
    ),
  );
}
