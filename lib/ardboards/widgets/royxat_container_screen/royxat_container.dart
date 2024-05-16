import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class RoyxatContainer extends StatefulWidget {
  final String image;
  final bool isSelected;

  RoyxatContainer({super.key, required this.image, required this.isSelected});

  @override
  State<RoyxatContainer> createState() => _RoyxatContainerState();
}

class _RoyxatContainerState extends State<RoyxatContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Positioned(
                child: SizedBox(
                  width: 0.35.sw,
                  height: 0.3.sh,
                  child: Image.asset(widget.image, fit: BoxFit.fill),
                ),
              ),
              if (widget.isSelected)
                Positioned(
                  bottom: 0.h,
                  child: Container(
                    width: 40.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(140, 38, 195, 177),
                        borderRadius: BorderRadius.circular(2)),
                    child: const Center(child: Text("TOP")),
                  ),
                ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20),
              Row(
                children: [
                  SizedBox(
                    width: 150.w,
                    child:
                        const Text("Panasonic malayziyada ishlab chiqarilgan"),
                  ),
                  Gap(5.w),
                  const Icon(Icons.favorite_border)
                ],
              ),
              Card(
                color: Colors.grey.shade300,
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 8, right: 8, top: 3, bottom: 3),
                  child: Text("Yangi"),
                ),
              ),
              const Gap(10),
              Text(
                "50 000 So'm",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(10),
              Text(
                "Toshkent,Chilonzor 2kv, 39 - uy",
                style: TextStyle(
                  color: Colors.grey.shade400,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
