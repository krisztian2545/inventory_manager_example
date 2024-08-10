// ignore_for_file: public_member_api_docs

import 'package:env/env.dart';

enum Flavor { development, staging, production }

sealed class AppEnv {
  const AppEnv();

  String getEnv(Env env);
}

class AppFlavor extends AppEnv {
  const AppFlavor._({required this.flavor});

  factory AppFlavor.development() =>
      const AppFlavor._(flavor: Flavor.development);
  factory AppFlavor.staging() => const AppFlavor._(flavor: Flavor.staging);
  factory AppFlavor.production() =>
      const AppFlavor._(flavor: Flavor.production);

  final Flavor flavor;

  /// Returns the given environmental variable based on the current [Flavor].
  @override
  String getEnv(Env env) => switch (env) {
        Env.objectBoxDBName => switch (flavor) {
            Flavor.development => EnvDev.objectBoxDBName,
            Flavor.staging => EnvStg.objectBoxDBName,
            Flavor.production => EnvProd.objectBoxDBName,
          },
      };
}
