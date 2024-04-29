import 'package:flutter/material.dart';

class CustomDetailChipWidget extends StatelessWidget {
  final String chipText;

  const CustomDetailChipWidget({super.key, required this.chipText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        padding: const EdgeInsets.all(14),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey.withOpacity(0.2),
        ),
        child: Text(
          chipText,
          style: TextStyle(
            color: Colors.grey.shade300,
          ),
        ),
      ),
    );
  }
}
