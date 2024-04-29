import 'package:flutter/material.dart';

class CustomGreyIconContainer extends StatelessWidget {
  final IconData icon;
  final bool isNotification;
  final Function() onTap;

  const CustomGreyIconContainer({
    super.key,
    required this.icon,
    required this.onTap,
    this.isNotification = true,
  });

  @override
  Widget build(BuildContext context) {
    return !isNotification
        ? GestureDetector(
            onTap: onTap,
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.2),
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 15,
              ),
            ),
          )
        : GestureDetector(
            onTap: onTap,
            child: Stack(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.2),
                  ),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 13,
                    height: 13,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          );
  }
}
