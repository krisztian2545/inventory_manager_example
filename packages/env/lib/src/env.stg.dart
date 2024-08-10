// lib/env/env.dart
import 'package:envied/envied.dart';

part 'env.stg.g.dart';

/// The environmental variables defined for the staging environment.
@Envied(path: '.env.stg', obfuscate: true)
abstract class EnvStg {
  /// The name of the ObjectBox database.
  @EnviedField(varName: 'OBX_DB_NAME')
  static String objectBoxDBName = _EnvStg.objectBoxDBName;
}
