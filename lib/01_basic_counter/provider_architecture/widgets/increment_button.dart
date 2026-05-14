import 'package:flutter/material.dart';

class IncrementButton extends StatelessWidget {
  final VoidCallback onPressed;
  const IncrementButton({super.key, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: const Text(' + Increment'));
  }
}
