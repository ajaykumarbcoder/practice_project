import 'package:dio/dio.dart';
import 'package:practice_project/05_api_call/getx_architecture/core/constants/api_constants.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();

  factory DioClient() => _instance;

  late Dio dio;

  DioClient._internal() {
    dio = Dio(BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30)));
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
  }
}
