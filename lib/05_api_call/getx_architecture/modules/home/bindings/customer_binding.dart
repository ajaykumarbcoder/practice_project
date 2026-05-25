import 'package:get/get.dart';
import 'package:practice_project/05_api_call/getx_architecture/data/providers/customer_provider.dart';
import 'package:practice_project/05_api_call/getx_architecture/data/repositories/customer_repository.dart';
import 'package:practice_project/05_api_call/getx_architecture/modules/home/controllers/customer_controller.dart';

class CustomerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> CustomerProvider());
    Get.lazyPut(()=> CustomerRepository(Get.find()));
    Get.lazyPut(()=> CustomerController(Get.find()));
  }
}