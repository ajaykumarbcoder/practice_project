import 'package:get/get.dart';
import 'package:practice_project/05_api_call/getx_architecture/data/providers/course_provider.dart';
import 'package:practice_project/05_api_call/getx_architecture/modules/home/controllers/home_controller.dart';
import 'package:practice_project/05_api_call/getx_architecture/repositories/course_repository.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CourseProvider>(()=>CourseProvider());
    Get.lazyPut(()=> CourseRepository(Get.find()));
    Get.lazyPut(()=> HomeController(Get.find()));
  }
}