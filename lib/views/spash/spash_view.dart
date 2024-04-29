// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:film_exam_demo/views/home/home_view.dart';
import 'package:film_exam_demo/views/spash/widgets/custom_rotate_image_widget.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(25, 23, 20, 1),
            Color.fromRGBO(22, 30, 86, 1),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 50,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to Gamecom',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.gamepad_outlined,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: -150,
                        child: CustomRotateImageWidget(
                          assetName: 'ronin',
                          transformRotation: 10,
                        ),
                      ),
                      CustomRotateImageWidget(
                        assetName: 'matchpoint',
                        transformRotation: -10,
                      ),
                      Positioned(
                        left: 160,
                        child: CustomRotateImageWidget(
                          assetName: 'sifu',
                          transformRotation: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 40,
                ),
                child: Text(
                  'Begin Your Gaming Odyssey',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeView(),
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 70,
                  width: 160,
                  child: Text(
                    "Let's go!",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Spacer(),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(height: 1.5),
                  children: [
                    TextSpan(
                      text: 'By continuing you accept\nour ',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    TextSpan(
                      text: 'Terms of Service',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
