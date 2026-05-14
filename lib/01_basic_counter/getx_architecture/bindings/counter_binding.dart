import 'package:get/get.dart';
import 'package:practice_project/01_basic_counter/getx_architecture/controller/counter_controller.dart';

class CounterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CounterController());
  }
}
