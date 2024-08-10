import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

/// Defines what not to log into Firebase Crashlytics.
class CrashlyticsFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return true;
  }
}

/// A [LogOutput] implementation that logs to the console.
class DebugLogOutput extends LogOutput {
  /// Creates a [DebugLogOutput]. You can also specify the max width of the
  /// message.
  DebugLogOutput({this.maxWidth = 200});

  /// The width of the log message.
  final int maxWidth;

  @override
  void output(OutputEvent event) {
    for (final line in event.lines) {
      var isLongLine = false;
      final pattern = RegExp('.{1,$maxWidth}');
      pattern.allMatches(line).forEach((match) {
        print('${isLongLine ? '│ ' : ''}${match.group(0)}');
        isLongLine = true;
      });
    }
  }
}

/// A [LogOutput] implementation that logs to Firebase Crashlytics.
class CrashlyticsLogOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    for (final line in event.lines) {
      FirebaseCrashlytics.instance.log(line);
    }
  }
}

/// A [Logger] instance, that uses the console in debug mode, and
/// Firebase Crashlytics otherwise.
final logger = Logger(
  filter: kDebugMode ? null : CrashlyticsFilter(),
  output: kDebugMode ? DebugLogOutput() : CrashlyticsLogOutput(),
  printer: PrettyPrinter(),
);
