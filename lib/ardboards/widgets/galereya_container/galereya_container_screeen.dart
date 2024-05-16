import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

// ignore: must_be_immutable
class GalereyaContainer extends StatefulWidget {
  final String image;
  final bool isSelected;

  GalereyaContainer({super.key, required this.image, required this.isSelected});

  @override
  State<GalereyaContainer> createState() => _GalereyaContainerState();
}

class _GalereyaContainerState extends State<GalereyaContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 0.7.sh,
      color: Colors.white,
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: SizedBox(
                  width: 1.sw,
                  height: 0.45.sh,
                  child: Image.asset(widget.image, fit: BoxFit.fill),
                ),
              ),
              if (widget.isSelected)
                Positioned(
                  bottom: 10.h,
                  child: Container(
                    width: 40.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(140, 38, 195, 177),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(child: Text("TOP")),
                  ),
                ),
            ],
          ),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Text(
                          "Panasonic malayziyada ishlab chiqarilgan judayam zur holatda"),
                    ),
                    Gap(5.w),
                    const Icon(Icons.favorite_border),
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
            ),
          ),
        ],
      ),
    );
  }
}
