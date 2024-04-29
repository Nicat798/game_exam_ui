// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:film_exam_demo/views/detail/widgets/custom_detail_chip_widget.dart';
import 'package:film_exam_demo/views/home/widgets/custom_grey_dot.dart';
import 'package:film_exam_demo/views/home/widgets/custom_grey_icon_container.dart';
import 'package:flutter/material.dart';

class GameDetailView extends StatelessWidget {
  const GameDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomGreyIconContainer(
                  icon: Icons.arrow_back_ios_new,
                  isNotification: false,
                  onTap: () => Navigator.pop(context),
                ),
                Text(
                  'Details',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                CustomGreyIconContainer(
                  onTap: () {},
                  icon: Icons.more_vert_outlined,
                  isNotification: false,
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: SizedBox(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: double.infinity,
                      height: 380,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://i.ytimg.com/vi/z0JkYHo-UpA/maxresdefault.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    left: 0,
                    bottom: 0,
                    child: BlurryContainer(
                      color: Color.fromARGB(255, 28, 62, 91).withOpacity(0.5),
                      padding: EdgeInsets.all(0),
                      child: SizedBox(
                        height: 400,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 50,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade500,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Crash Bandicoot',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '2018',
                                  style: TextStyle(color: Colors.grey.shade400),
                                ),
                                SizedBox(width: 5),
                                CustomGreyDot(),
                                SizedBox(width: 5),
                                Text(
                                  'Santa Monico Studio',
                                  style: TextStyle(color: Colors.grey.shade400),
                                ),
                                SizedBox(width: 5),
                                CustomGreyDot(),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.star_half,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "4.2",
                                  style: TextStyle(color: Colors.grey.shade400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Text(
                                'Lorem ipsum' * 5,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomDetailChipWidget(chipText: 'Action'),
                                CustomDetailChipWidget(chipText: 'Adventure'),
                                CustomDetailChipWidget(chipText: 'Open world'),
                              ],
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 50),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Text(
                                'Mark as played',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
