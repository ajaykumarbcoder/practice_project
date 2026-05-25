import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_project/05_api_call/getx_architecture/modules/home/controllers/customer_controller.dart';
import 'package:practice_project/05_api_call/getx_architecture/modules/home/widgets/customer_list_tile.dart';

class GetXCustomersScreen extends GetView<CustomerController> {
  const GetXCustomersScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Customers List',
        ),
      ),
      body: Obx(() {
        if (controller.isLoading.value && controller.customers.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (controller.customers.isEmpty) {
          return const Center(
            child: Text(
              'No Customers Found',
            ),
          );
        }

        return Stack(
          children: [
            ListView.builder(
              controller: controller.scrollController,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                vertical: 12,
              ),
              itemCount: controller.customers.length,
              itemBuilder: (context, index) {
                final customer = controller.customers[index];
                return CustomerListTile(
                  id: customer.id,
                  email: customer.email,
                );
              },
            ),
            Obx(
              () => controller.isLoadMore.value
                  ? Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                  0.08,
                                ),
                                blurRadius: 10,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2.2,
                                ),
                              ),
                              SizedBox(width: 14),
                              Text(
                                'Loading more...',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        );
      }),
    );
  }
}
