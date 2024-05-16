import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActionButton extends StatefulWidget {
  const ActionButton({super.key});

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 30.sp,
                  color: Color.fromARGB(255, 30, 47, 37),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  size: 30.sp,
                  color: Color.fromARGB(255, 53, 67, 61),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  size: 30.sp,
                  color: const Color.fromARGB(255, 53, 67, 61),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.sms_outlined,
                  size: 30.sp,
                  color: const Color.fromARGB(255, 53, 67, 61),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person_sharp,
                  size: 30.sp,
                  color: const Color.fromARGB(255, 53, 67, 61),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
