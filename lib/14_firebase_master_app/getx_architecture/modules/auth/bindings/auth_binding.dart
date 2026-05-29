import 'package:get/get.dart';
import 'package:practice_project/14_firebase_master_app/getx_architecture/modules/auth/controllers/auth_controller.dart';

class AuthBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> AuthController());
  }
}