import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A class that defines [SystemUiOverlayStyle]s for the app.
abstract final class SystemUiOverlayTheme {
  /// Returns an overlay style with the systemNavigationBarColor and
  /// systemNavigationBarDividerColor set to transparent.
  ///
  /// Also sets the system ui mode to [SystemUiMode.edgeToEdge].
  static SystemUiOverlayStyle customOverlayStyle() {
    unawaited(SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge));
    return const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
    );
  }
}
