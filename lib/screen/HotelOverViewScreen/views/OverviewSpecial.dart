import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pre_booking/utils/textLabel.dart';

class OverViewBannerScreen extends StatelessWidget {
  OverViewBannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.w),
      child: SizedBox(
        width: 85.w,
        height: 85.h,
        //  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.black),

        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            "https://img.freepik.com/premium-photo/bowl-chicken-biryani-with-mint-leaves-side_787273-1828.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

