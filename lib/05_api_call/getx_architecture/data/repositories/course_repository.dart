import 'package:practice_project/05_api_call/getx_architecture/data/models/course_model.dart';
import 'package:practice_project/05_api_call/getx_architecture/data/providers/course_provider.dart';

class CourseRepository {
  final CourseProvider provider;
  CourseRepository(this.provider);
  Future<List<CourseModel>> getCourses() async {
    return provider.getCourses();
  }
}
