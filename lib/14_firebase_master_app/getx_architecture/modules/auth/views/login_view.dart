import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_project/14_firebase_master_app/getx_architecture/modules/auth/controllers/auth_controller.dart';

class LoginView extends GetView<AuthController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Auth'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller.emailController,
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: controller.passwordController,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
            ),

            const SizedBox(height: 30),

            Obx(() {
              return controller.isLoading.value
                  ? const CircularProgressIndicator()
                  : Column(
                children: [
                  ElevatedButton(
                    onPressed: controller.signUp,
                    child: const Text('Sign Up'),
                  ),

                  ElevatedButton(
                    onPressed: controller.login,
                    child: const Text('Login'),
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}