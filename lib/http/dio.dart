
import 'package:dio/dio.dart';
import '../consts/configs.dart';

late final Dio dio;

void setDio() {
  final options = BaseOptions(
    baseUrl: ConfigsEntity.baseUrl,
    contentType: 'application/json',
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );

  dio = Dio(options);
}
