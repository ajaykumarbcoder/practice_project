import 'package:practice_project/05_api_call/getx_architecture/core/constants/api_constants.dart';
import 'package:practice_project/05_api_call/getx_architecture/core/network/api_client.dart';
import 'package:practice_project/05_api_call/getx_architecture/data/models/course_response_model.dart';

class CourseRepository {
  late ApiClient apiClient;

  CourseRepository(this.apiClient);

  Future<CourseResponseModel> getCourseList() async {
    try {
      final response = await apiClient.dio
          .get('${AppConstants.baseUrl}${AppConstants.endPointCourse}');
      if (response.statusCode == 200) {
        return CourseResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to load courses');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
