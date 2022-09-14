import 'package:flutter/material.dart';
import 'package:movie_app/routes/router.dart';
import 'package:movie_app/utils/load_json.dart';
import 'package:easy_localization/easy_localization.dart';
import 'consts/assets.dart';
import 'consts/configs.dart';
import 'http/dio.dart';

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
        routerDelegate: router.delegate(),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }
}

Future<void> setConfigs() async {
  final config = await loadJson(Assets.devEnv);

  ConfigsEntity.baseUrl = config['baseUrl'];
  ConfigsEntity.apiKey = config['apiKey'];
  ConfigsEntity.baseImage = config['baseImage'];
  setDio();
}
