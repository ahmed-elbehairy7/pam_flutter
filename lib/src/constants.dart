import 'package:logger/logger.dart';

typedef Dict = Map<String, dynamic>;

final consoleLog = Logger(
  level: Level.warning,
  printer: PrettyPrinter(
      colors: false,
      errorMethodCount: 10,
      methodCount: 0,
      printEmojis: false,
      noBoxingByDefault: true),
  output: null,
);
