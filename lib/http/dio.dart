import 'package:dio/dio.dart';
import 'package:movie_app/consts/configs.dart';

late final Dio dio;

void setDio() {
  final options = BaseOptions(
    baseUrl: ConfigsEntity.baseUrl,
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );

  dio = Dio(options);
}
