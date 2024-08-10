import 'package:app_ui/src/colors/colors.dart';
import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/material.dart';

/// The [ColorScheme]s used in the app using the colors from [ColorTokens].
sealed class AppColorScheme {
  /// A light color scheme.
  static ColorScheme get light => SeedColorScheme.fromSeeds(
        brightness: Brightness.light,
        primaryKey: ColorTokens.brandColor,
        tones: FlexTones.chroma(Brightness.light),
      );
}
