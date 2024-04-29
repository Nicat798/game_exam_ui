import 'package:flutter/material.dart';

class CustomGreyDot extends StatelessWidget {
  const CustomGreyDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5,
      height: 5,
      decoration: const BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
