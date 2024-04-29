import 'package:flutter/material.dart';

class CustomNavigatorButton extends StatelessWidget {
  final IconData icon;
  final bool isSelected;

  const CustomNavigatorButton({
    super.key,
    required this.icon,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.black.withOpacity(0.5),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: isSelected ? Colors.black : Colors.white),
    );
  }
}
