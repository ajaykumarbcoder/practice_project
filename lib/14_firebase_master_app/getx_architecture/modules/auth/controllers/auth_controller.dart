import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:practice_project/14_firebase_master_app/getx_architecture/services/auth_service.dart';

class AuthController extends GetxController {
  final AuthService _authService = AuthService();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  RxBool isLoading = false.obs;

  Future<void> signUp() async {
    try {
      isLoading.value = true;
      await _authService.signUp(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
      Get.snackbar(
        'Success',
        'Account Created',
      );
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
      );
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> login() async {
    try {
      isLoading.value = true;

      await _authService.login(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      Get.snackbar(
        'Success',
        'Login Success',
      );
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
      );
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> logout() async {
    await _authService.logout();
  }
}
