import 'package:get/get.dart';
import 'package:practice_project/05_api_call/getx_architecture/data/models/course_model.dart';
import 'package:practice_project/05_api_call/getx_architecture/data/repositories/course_repository.dart';

class HomeController extends GetxController {
  final CourseRepository courseRepository;
  HomeController(this.courseRepository);
  RxBool isLoading = false.obs;

  RxList<CourseModel> courses = <CourseModel>[].obs;
  @override
  void onInit() {
    super.onInit();
  }

  Future<void> fetchCourses() async {
    try {
      isLoading.value = true;
      final result = await courseRepository.getCourses();
      courses.assignAll(result);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
