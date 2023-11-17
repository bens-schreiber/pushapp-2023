import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

Logger _logger() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    if (kDebugMode) {
      print("${record.level.name}: ${record.message}");
    }
  });
  return Logger("PushApp");
}

abstract class DebugLog {
  static final _log = _logger();

  static void logError(Object error) {
    _log.severe(error.toString(), error, StackTrace.current);
  }

  static void logWarning(String message) {
    _log.warning(message);
  }
}