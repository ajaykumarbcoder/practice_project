import 'package:dio/dio.dart';
import 'package:practice_project/05_api_call/getx_architecture/core/constants/api_constants.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();

  factory DioClient() => _instance;

  late Dio dio;

  DioClient._internal() {
    dio = Dio(BaseOptions(
        headers: {
          "x-access-token":
              "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzZXNzaW9uIjoiNmEwZTkyZTMwMzdlNzgxMTY2OGY4ZTQyIiwidXNlciI6IjY5ODQyZjA0MTdiYmQ2ZmZhMGE4NzJkOSIsImlhdCI6MTc3OTM0MDAwMywiZXhwIjoxODEwODc2MDAzfQ.pSTm3eQUz8_tC0tbC2twdtayxXqSqiHkLMZszFj_iKI",
          "Domain": "app.litcode.in"
        },
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30)));
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
   // dio.interceptors.add(_AuthInterceptor());
  }
}
// When the Industry standard (OAuth, JWT) / Authorization Bearer
class _AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
    String token =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzZXNzaW9uIjoiNmEwZTkyZTMwMzdlNzgxMTY2OGY4ZTQyIiwidXNlciI6IjY5ODQyZjA0MTdiYmQ2ZmZhMGE4NzJkOSIsImlhdCI6MTc3OTM0MDAwMywiZXhwIjoxODEwODc2MDAzfQ.pSTm3eQUz8_tC0tbC2twdtayxXqSqiHkLMZszFj_iKI";
    if (token.isNotEmpty) {
      options.headers['Authorization'] = "Bearer $token";
    }
    return handler.next(options);
  }
}
