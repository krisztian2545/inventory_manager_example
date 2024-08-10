import 'package:app_ui/app_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Defines the theme of the app.
sealed class AppTheme {
  /// Returns a new [ThemeData] that represents the theme of the app.
  static ThemeData build() {
    final colorScheme = AppColorScheme.light;

    final visualDensity = comfortablePlatformDensity;

    return ThemeData.from(
      useMaterial3: true,
      colorScheme: colorScheme,
    ).copyWith(
      visualDensity: visualDensity,
      typography: Typography.material2021(
        platform: defaultTargetPlatform,
        colorScheme: colorScheme,
      ),
    );
  }
}
