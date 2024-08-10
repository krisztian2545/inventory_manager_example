// ignore: public_member_api_docs
extension StringX on String {
  /// placeholder to mark literals which needs to be localized
  String get hardcoded => this;

  /// Capitalizes the first character
  String get capitalized => this[0].toUpperCase() + substring(1);
}
