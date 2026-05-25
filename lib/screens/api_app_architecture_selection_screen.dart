import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_project/05_api_call/getx_architecture/routes/app_routes.dart';

class ApiAppArchitectureSelectionScreen extends StatelessWidget {
  final String moduleTitle;

  const ApiAppArchitectureSelectionScreen({
    super.key,
    required this.moduleTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(moduleTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ListTile(
              title: const Text(
                'Provider Architecture',
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'GetX Architecture',
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
              ),
              onTap: () {
                print('On Tap');
                Get.toNamed(AppRoutes.customer);
              },
            ),
            ListTile(
              title: const Text(
                'Riverpod Architecture',
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
