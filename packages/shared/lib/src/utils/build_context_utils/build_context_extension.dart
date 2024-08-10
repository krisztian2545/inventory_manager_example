import 'package:flutter/material.dart';

// ignore: public_member_api_docs
extension BuildContextX on BuildContext {
  /// Returns the [Locale] in this context.
  Locale get locale => Localizations.localeOf(this);

  /// Returns current locale's language code.
  String get languageCode => locale.languageCode;
}
