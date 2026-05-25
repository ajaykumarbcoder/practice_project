import 'package:json_annotation/json_annotation.dart';
part 'customer_model.g.dart';

@JsonSerializable()
class CustomerModel {
  final String id;
  final String? fullName;
  final String? phone;
  final String email;

  const CustomerModel(
      {required this.id,
      required this.fullName,
      required this.phone,
      required this.email});

  factory CustomerModel.fromJson(Map<String, dynamic> json)=> _$CustomerModelFromJson(json);
  Map<String, dynamic> toJson()=> _$CustomerModelToJson(this);
}
