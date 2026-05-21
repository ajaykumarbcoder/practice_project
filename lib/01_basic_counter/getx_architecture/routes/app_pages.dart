import 'package:get/get.dart';
import 'package:practice_project/01_basic_counter/getx_architecture/bindings/counter_binding.dart';
import 'package:practice_project/01_basic_counter/getx_architecture/routes/app_routes.dart';
import 'package:practice_project/01_basic_counter/getx_architecture/view/getx_counter_screen.dart';

class AppPages {
  static final routes = [
    GetPage(
        name: AppRoutes.counter,
        page: () => const GetXCounterScreen(),
        binding: CounterBinding()),
  ];
}
