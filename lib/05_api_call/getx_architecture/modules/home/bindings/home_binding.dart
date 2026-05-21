import 'package:get/get.dart';
import 'package:practice_project/05_api_call/getx_architecture/modules/home/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=> HomeController());
  }
}