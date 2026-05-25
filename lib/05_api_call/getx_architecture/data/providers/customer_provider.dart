import 'package:dio/dio.dart';
import 'package:practice_project/05_api_call/getx_architecture/core/constants/api_constants.dart';
import 'package:practice_project/05_api_call/getx_architecture/core/network/dio_client.dart';
import 'package:practice_project/05_api_call/getx_architecture/data/models/customer_model.dart';

class CustomerProvider {
  final Dio dio = DioClient().dio;

  Future<List<CustomerModel>> getCustomers({
    required int pageNo,
    required int pageSize,
  }) async {
    final response = await dio.get(ApiConstants.customers, queryParameters: {
      'pageNo': pageNo,
      'pageSize': pageSize,
    });
    if (response.statusCode == 200) {
      return (response.data['items'] as List)
          .map((e) => CustomerModel.fromJson(e))
          .toList();
    } else {
      return [];
    }
  }
}
