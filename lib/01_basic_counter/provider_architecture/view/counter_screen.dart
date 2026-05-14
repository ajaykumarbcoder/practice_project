import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_project/01_basic_counter/provider_architecture/provider/counter_provider.dart';
import 'package:practice_project/01_basic_counter/provider_architecture/utils/app_strings.dart';
import 'package:practice_project/01_basic_counter/provider_architecture/widgets/counter_text.dart';
import 'package:practice_project/01_basic_counter/provider_architecture/widgets/decrement_button.dart';
import 'package:practice_project/01_basic_counter/provider_architecture/widgets/increment_button.dart';
import 'package:provider/provider.dart';

class ProviderCounterScreen extends StatelessWidget {
  const ProviderCounterScreen({super.key});
  @override
  Widget build(context) {
    final countProvider = Provider.of<CounterProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.appName),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(()=>
                 CounterText(count: countProvider.count)),
              IncrementButton(onPressed: countProvider.increment),
              DecrementButton(onPressed: countProvider.decrement),
            ],
          ),
        ));
  }
}
