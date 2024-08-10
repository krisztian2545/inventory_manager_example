// lib/env/env.dart
import 'package:envied/envied.dart';

part 'env.dev.g.dart';

/// The environmental variables defined for the development environment.
@Envied(path: '.env.dev', obfuscate: true)
abstract class EnvDev {
  /// The name of the ObjectBox database.
  @EnviedField(varName: 'OBX_DB_NAME')
  static String objectBoxDBName = _EnvDev.objectBoxDBName;
}
