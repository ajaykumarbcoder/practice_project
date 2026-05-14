import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:practice_project/01_basic_counter/getx_architecture/routes/app_pages.dart';
import 'package:provider/provider.dart';
import '01_basic_counter/provider_architecture/provider/counter_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => CounterProvider(), child: const MyPracticeApp()));
}

class MyPracticeApp extends StatelessWidget {
  const MyPracticeApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
