import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_project/01_basic_counter/getx_architecture/controller/counter_controller.dart';
import 'package:practice_project/01_basic_counter/provider_architecture/utils/app_strings.dart';
import 'package:practice_project/01_basic_counter/provider_architecture/widgets/counter_text.dart';
import 'package:practice_project/01_basic_counter/provider_architecture/widgets/decrement_button.dart';
import 'package:practice_project/01_basic_counter/provider_architecture/widgets/increment_button.dart';

class GetXCounterScreen extends StatelessWidget {
  const GetXCounterScreen({super.key});
  @override
  Widget build(context) {
    final counterController = Get.find<CounterController>();
    return Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.appName),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => CounterText(count: counterController.count.value)),
              IncrementButton(onPressed: counterController.increment),
              DecrementButton(onPressed: counterController.decrement),
            ],
          ),
        ));
  }
}
