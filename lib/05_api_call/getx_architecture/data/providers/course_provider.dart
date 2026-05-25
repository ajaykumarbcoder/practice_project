import 'package:dio/dio.dart';
import 'package:practice_project/05_api_call/getx_architecture/core/constants/api_constants.dart';
import 'package:practice_project/05_api_call/getx_architecture/core/network/dio_client.dart';
import 'package:practice_project/05_api_call/getx_architecture/data/models/course_model.dart';

class CourseProvider {
  final Dio dio = DioClient().dio;

  Future<List<CourseModel>> getCourses() async {
    final response = await dio.get(ApiConstants.courses);
    if (response.statusCode == 200) {
      return (response.data['items'] as List)
          .map((e) => CourseModel.fromJson(e))
          .toList();
    } else{
      return [];
    }
  }
}
