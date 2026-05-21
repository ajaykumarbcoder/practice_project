import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:practice_project/05_api_call/getx_architecture/routes/app_pages.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ProviderScope(child:  MyPracticeApp()));
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
