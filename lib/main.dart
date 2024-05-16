import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:may16/ardboards/screens/page1_screen/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Page1Screen(),
        );
      },
    );
  }
}
