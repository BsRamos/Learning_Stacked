import 'package:dio/dio.dart';

class HTTPSRequest {
  var dio;
  BaseOptions options = BaseOptions(
    baseUrl: 'https://api.github.com',
    connectTimeout: 10000,
    receiveTimeout: 10000,
  );

  HTTPSRequest() {
    dio = Dio(options);
  }
}
