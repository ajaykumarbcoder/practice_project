import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_project/05_api_call/getx_architecture/data/models/customer_model.dart';
import 'package:practice_project/05_api_call/getx_architecture/data/repositories/customer_repository.dart';

class CustomerController extends GetxController {
  final CustomerRepository repository;
  CustomerController(this.repository);
  RxList<CustomerModel> customers = <CustomerModel>[].obs;
  RxBool isLoading = false.obs;
  RxBool isLoadMore = false.obs;
  RxBool hasMore = true.obs;
  int pageNo = 1;
  final int pageSize = 10;
  final ScrollController scrollController = ScrollController();
  @override
  void onInit() {
    super.onInit();
    getCustomers();
    scrollController.addListener(_scrollListener);
  }
  void _scrollListener() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 200) {
      if (!isLoadMore.value && hasMore.value) {
        getCustomers(isPagination: true);
      }
    }
  }
  Future<void> getCustomers({
    bool isPagination = false,
  }) async {
    try {
      if (isPagination) {
        isLoadMore.value = true;
      } else {
        isLoading.value = true;
      }
      final result = await repository.getCustomer(
        pageNo: pageNo,
        pageSize: pageSize,
      );
      if (result.length < pageSize) {
        hasMore.value = false;
      }
      customers.addAll(result);
      pageNo++;
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
      );
    } finally {
      isLoading.value = false;
      isLoadMore.value = false;
    }
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}
