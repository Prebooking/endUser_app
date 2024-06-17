import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:pre_booking/screen/AuthenticationScreen/SignUpScreenMain.dart';
import 'package:pre_booking/screen/DashboardScreen/DashboardScreenMain.dart';
import 'package:pre_booking/screen/HotelOverViewScreen/views/Overview.dart';

void main() {
  runApp(PrebookingApp());
}

class PrebookingApp extends StatelessWidget {
  const PrebookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => GetMaterialApp(
        home: OvervieScreen(),
      ),
    );
  }
}
