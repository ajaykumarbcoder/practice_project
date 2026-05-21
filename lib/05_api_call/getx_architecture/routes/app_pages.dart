import 'package:get/get.dart';
import 'package:practice_project/05_api_call/getx_architecture/modules/home/bindings/home_binding.dart';
import 'package:practice_project/05_api_call/getx_architecture/modules/home/views/getX_home_screen.dart';
import 'package:practice_project/05_api_call/getx_architecture/routes/app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
        name: AppRoutes.home,
        page: () => const GetXHomeScreen(),
        binding: HomeBinding()),
  ];
}