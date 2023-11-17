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

final _log = _logger();

/*
  Wrapper for the logger package.
  TODO: Server side error logging
*/
class DebugLog {
  void logError(Object error) {
    _log.severe(error.toString(), error, StackTrace.current);
  }

  void logWarning(String message) {
    _log.warning(message);
  }
}
