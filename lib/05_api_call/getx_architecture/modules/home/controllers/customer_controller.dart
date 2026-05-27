import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_project/05_api_call/getx_architecture/data/models/customer_model.dart';
import 'package:practice_project/05_api_call/getx_architecture/data/repositories/customer_repository.dart';

class CustomerController extends GetxController {
  final CustomerRepository customerRepository;
  CustomerController(this.customerRepository);
  RxList<CustomerModel> customers = <CustomerModel>[].obs;
  RxBool isLoading = false.obs;
  RxBool isLoadMore = false.obs;
  RxBool hasMore = true.obs;
  RxInt pageNo = 1.obs;
  RxInt pageSize = 10.obs;
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

  Future<void> getCustomers({ bool isPagination = false}) async {
    try {
      if (isPagination) {
        isLoadMore.value = true;
      } else {
        isLoading.value = true;
      }
      final result = await customerRepository.getCustomer(
          pageNo: pageNo.value, pageSize: pageSize.value);
      if (result.length < pageSize.value) {
        hasMore.value = false;
      }
      customers.addAll(result);
      pageNo.value++;
    } catch (e) {
      Get.snackbar('Error', e.toString());
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
