import 'package:flutter/material.dart';

class CustomRotateImageWidget extends StatelessWidget {
  final String assetName;
  final int transformRotation;

  const CustomRotateImageWidget({
    super.key,
    required this.assetName,
    required this.transformRotation,
  });
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: FractionalOffset.center,
      transform: Matrix4.rotationZ(
        3.1415926535897932 / -transformRotation,
      ),
      child: Container(
        child: Image.asset(
          'assets/images/$assetName.png',
          width: 200,
        ),
      ),
    );
  }
}
