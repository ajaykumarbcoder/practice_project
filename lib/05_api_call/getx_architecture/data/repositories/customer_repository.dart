import 'package:practice_project/05_api_call/getx_architecture/data/models/customer_model.dart';
import 'package:practice_project/05_api_call/getx_architecture/data/providers/customer_provider.dart';

class CustomerRepository {
  CustomerProvider provider;
  CustomerRepository(this.provider);

  Future<List<CustomerModel>> getCustomer({
    required int pageNo,
    required int pageSize,
  }) async {
    return provider.getCustomers(pageNo: pageNo, pageSize: pageSize);
  }
}
