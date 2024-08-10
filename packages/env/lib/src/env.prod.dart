// lib/env/env.dart
import 'package:envied/envied.dart';

part 'env.prod.g.dart';

/// The environmental variables defined for the production environment.
@Envied(path: '.env.prod', obfuscate: true)
abstract class EnvProd {
  /// The name of the ObjectBox database.
  @EnviedField(varName: 'OBX_DB_NAME')
  static String objectBoxDBName = _EnvProd.objectBoxDBName;
}
