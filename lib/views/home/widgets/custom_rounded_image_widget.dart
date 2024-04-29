import 'package:flutter/material.dart';

class CustomRoundedImageWidget extends StatelessWidget {
  final String asset;
  final double top;
  final double left;
  final int rotate;

  const CustomRoundedImageWidget({
    super.key,
    required this.top,
    required this.left,
    required this.asset,
    required this.rotate,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: Transform(
        alignment: FractionalOffset.center,
        transform: Matrix4.rotationZ(
          3.1415926535897932 / rotate,
        ),
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(asset),
            ),
          ),
        ),
      ),
    );
  }
}
