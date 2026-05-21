import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_project/01_basic_counter/getx_architecture/routes/app_routes.dart';
import 'package:practice_project/01_basic_counter/provider_architecture/view/counter_screen.dart';
import 'package:practice_project/01_basic_counter/riverpod_architecture/view/riverpod_counter_screen.dart';

class ArchitectureSelectionScreen extends StatelessWidget {
  final String moduleTitle;

  const ArchitectureSelectionScreen({
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ProviderCounterScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'GetX Architecture',
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
              ),
              onTap: () {
                Get.toNamed(AppRoutes.counter);
              },
            ),
            ListTile(
              title: const Text(
                'Riverpod Architecture',
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const RiverpodCounterScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
