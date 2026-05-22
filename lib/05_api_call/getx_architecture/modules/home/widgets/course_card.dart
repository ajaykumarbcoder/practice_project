import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String imageUrl;
  final int enrollUsers;
  final String title;
  final String rating;
  final String description;
  final List<String> tags;
  final int lectures;
  final int chapters;

  const CourseCard(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.description,
      required this.chapters,
      required this.enrollUsers,
      required this.lectures,
      required this.rating,
      required this.tags});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(24),
          ),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                CachedNetworkImage(
                  imageUrl: imageUrl,
                  height: 200,
                  width: double.infinity,
                ),
                Positioned(
                    child: Container(color: Colors.white,
                  child: Text('enrolled: $enrollUsers'),
                ))
              ],
            ),
          ],
        ));
  }
}
