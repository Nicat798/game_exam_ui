// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:film_exam_demo/views/detail/game_detail_view.dart';
import 'package:film_exam_demo/views/home/widgets/custom_card_widget.dart';
import 'package:film_exam_demo/views/home/widgets/custom_grey_dot.dart';
import 'package:film_exam_demo/views/home/widgets/custom_grey_icon_container.dart';
import 'package:film_exam_demo/views/home/widgets/custom_navigator_button.dart';
import 'package:film_exam_demo/views/home/widgets/custom_rounded_image_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(25, 23, 20, 1),
              Color.fromRGBO(22, 30, 86, 1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 50, right: 20, left: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'GAMECOM',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                  CustomGreyIconContainer(
                    icon: Icons.notification_add,
                    onTap: () {},
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                //  color: Colors.white,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CustomRoundedImageWidget(
                        left: 130,
                        top: 50,
                        asset: "assets/images/crash3.jpeg",
                        rotate: 10),
                    CustomRoundedImageWidget(
                        top: 50,
                        left: -50,
                        asset: "assets/images/crash2.jpg",
                        rotate: -15),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GameDetailView())),
                      child: Container(
                        width: 220,
                        height: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                "assets/images/crash_bandicoot.webp"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Up on your wish list',
                style: TextStyle(color: Colors.grey.shade400),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'Crash Bandicoot',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '2024',
                    style: TextStyle(color: Colors.grey.shade400),
                  ),
                  SizedBox(width: 5),
                  CustomGreyDot(),
                  SizedBox(width: 5),
                  Text(
                    'Shift Up',
                    style: TextStyle(color: Colors.grey.shade400),
                  ),
                  SizedBox(width: 5),
                  CustomGreyDot(),
                  SizedBox(width: 5),
                  Icon(
                    Icons.star_half,
                    color: Colors.blue,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Latest Reviews',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Spacer(),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomGreyIconContainer(
                    onTap: () {},
                    icon: Icons.arrow_forward_ios,
                    isNotification: false,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        CustomCardWidget(
                          gameImage:
                              "https://static.lagofast.com/blog/cover/16849091647053506.jpg",
                          gameName: "Final Fantasy XV",
                          isOnline: true,
                          author: 'Stephanie Myres',
                          year: '2024',
                          score: '4.4',
                        ),
                        CustomCardWidget(
                          gameImage:
                              "https://image.api.playstation.com/cdn/UP0700/CUSA05972_00/4yfeeKKfJdD5WzDQsoiM3xrcqPlpDLm7.png",
                          gameName: "Tekken 7",
                          isOnline: true,
                          author: 'Stephanie Myres',
                          year: '2022',
                          score: '4.1',
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 25,
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: BlurryContainer(
                          borderRadius: BorderRadius.circular(50),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                          ),
                          color: Colors.grey.shade400.withOpacity(0.7),
                          child: SizedBox(
                            width: double.infinity,
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomNavigatorButton(
                                  isSelected: true,
                                  icon: Icons.home,
                                ),
                                CustomNavigatorButton(
                                  icon: Icons.search,
                                  isSelected: false,
                                ),
                                CustomNavigatorButton(
                                  icon: Icons.heart_broken_sharp,
                                  isSelected: false,
                                ),
                                CustomNavigatorButton(
                                  icon: Icons.person,
                                  isSelected: false,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
