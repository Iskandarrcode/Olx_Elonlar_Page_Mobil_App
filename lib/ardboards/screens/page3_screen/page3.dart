import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:may16/ardboards/screens/page1_screen/page1.dart';
import 'package:may16/ardboards/screens/page2_screen/page2.dart';
import 'package:may16/ardboards/widgets/action_button/float_action_button.dart';
import 'package:may16/ardboards/widgets/mozaika_container/mozaika_container.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Page3Screen extends StatefulWidget {
  const Page3Screen({super.key});

  @override
  State<Page3Screen> createState() {
    return _MyPage1Screen();
  }
}

class _MyPage1Screen extends State<Page3Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(235, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "BIZ 1,000 DAN ORTIQ E'LON TOPDIK",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      ZoomTapAnimation(
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          width: 30.w,
                          height: 28.h,
                          child: SvgPicture.asset("assets/icons/icon2.svg"),
                        ),
                      ),
                      const Gap(2),
                      PopupMenuButton<int>(
                        icon: const Icon(Icons.view_stream_outlined),
                        color: Colors.white,
                        onSelected: (value) {
                          if (value == 1) {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const Page1Screen();
                              },
                            ));
                          }
                          if (value == 2) {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const Page2Screen();
                              },
                            ));
                          }
                          if (value == 3) {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const Page3Screen();
                              },
                            ));
                          }
                        },
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuEntry<int>>[
                          const PopupMenuItem<int>(
                            value: 1,
                            child: Text("Galereya"),
                          ),
                          const PopupMenuItem<int>(
                            value: 2,
                            child: Text("Ro'yxat"),
                          ),
                          const PopupMenuItem<int>(
                            value: 3,
                            child: Text("Mozaika"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const Gap(10),
              GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.45),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  MozaikaContainer(
                    image: "assets/images/image1.jpeg",
                    isSelected: true,
                  ),
                  MozaikaContainer(
                    image: "assets/images/image2.webp",
                    isSelected: true,
                  ),
                  MozaikaContainer(
                    image: "assets/images/image3.webp",
                    isSelected: false,
                  ),
                  MozaikaContainer(
                    image: "assets/images/image4.jpeg",
                    isSelected: false,
                  ),
                  MozaikaContainer(
                    image: "assets/images/image5.webp",
                    isSelected: true,
                  ),
                  MozaikaContainer(
                    image: "assets/images/image6.webp",
                    isSelected: true,
                  ),
                  MozaikaContainer(
                    image: "assets/images/image7.jpg",
                    isSelected: false,
                  ),
                  MozaikaContainer(
                    image: "assets/images/image8.png",
                    isSelected: false,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const ActionButton(),
    );
  }
}
