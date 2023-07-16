
import 'package:dio/dio.dart';
import '../consts/configs.dart';

late final Dio dio;

void setDio() {
  final options = BaseOptions(
    baseUrl: ConfigsEntity.baseUrl,
    contentType: 'application/json',
    connectTimeout: const Duration(seconds: 24),
    receiveTimeout: const Duration(seconds: 24),
  );

  dio = Dio(options);
}
