import 'package:json_annotation/json_annotation.dart';
part 'course_model.g.dart';

@JsonSerializable()
class CourseModel {
  final String id;
  final String name;
  final List<String> tags;
  final String description;
  final String coverImage;

  final int purchaseCount;

  const CourseModel(
      {required this.id,
      required this.name,
      required this.tags,
      required this.description,
      required this.coverImage,
      required this.purchaseCount,
      });

  factory CourseModel.fromJson(Map<String, dynamic> json)=>
    _$CourseModelFromJson(json);
  Map<String, dynamic> toJson()=> _$CourseModelToJson(this);

}
