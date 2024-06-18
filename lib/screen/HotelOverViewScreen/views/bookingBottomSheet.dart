import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class bookingBottomSheet extends StatelessWidget {
  const bookingBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          color: Colors.white),
    );
  }
}
