import 'package:flutter/material.dart';
import 'package:movie_app/routes.dart';
import 'package:movie_app/utils/load_json.dart';

import 'consts/assets.dart';
import 'consts/configs.dart';
import 'http/dio.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setConfigs();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie app',
      initialRoute: '/',
      routes: routes,
      onGenerateRoute: onGenerateRoute,
    );
  }
}

Future<void> setConfigs() async {
  final config = await loadJson(Assets.devEnv);

  ConfigsEntity.baseUrl = config['baseUrl'];
  ConfigsEntity.apiKey = config['apiKey'];
  setDio();
}
