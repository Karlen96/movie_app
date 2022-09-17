import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'consts/assets.dart';
import 'consts/configs.dart';
import 'http/dio.dart';
import 'routes/router.dart';
import 'theme/light_theme.dart';
import 'utils/load_json.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await setConfigs();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [Locale('en')],
      path: Assets.translations,
      useOnlyLangCode: true,
      startLocale: const Locale('en'),
      fallbackLocale: const Locale('en'),
      child: MaterialApp.router(
        theme: lightTheme,
        routerDelegate: router.delegate(),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }
}

Future<void> setConfigs() async {
  final config = await loadJson(Assets.devEnv);

  ConfigsEntity.baseUrl = config['baseUrl'] as String;
  ConfigsEntity.apiKey = config['apiKey'] as String;
  ConfigsEntity.baseImage = config['baseImage'] as String;
  setDio();
}
