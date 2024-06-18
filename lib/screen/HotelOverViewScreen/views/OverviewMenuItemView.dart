import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pre_booking/utils/textLabel.dart';

class OverViewItemScreen extends StatelessWidget {
  const OverViewItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //  width: 335.w,
      height: 74.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: -1,
                color: Colors.black.withOpacity(.03))
          ]),
      padding: EdgeInsets.all(7.h),
      margin: EdgeInsets.only(bottom: 5.h),
      child: Row(
        children: [
          SizedBox(
            width: 80.w,
            height: 85.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                "assets/hotel.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5.h,
              ),
              TextLable.appText("Half Chicken Manthi Spicy",
                  fontWeight: FontWeight.w500,
                  size: 15.sp,
                  color: Color(0xff747373)),
              SizedBox(
                height: 5.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextLable.appText("Rs 320",
                      fontWeight: FontWeight.w600,
                      size: 15.sp,
                      color: Colors.black),
                  SizedBox(
                    width: 5.w,
                  ),
                  TextLable.appText("Rs 340",
                      fontWeight: FontWeight.w600,
                      size: 11.sp,
                      decoration: TextDecoration.lineThrough,
                      color: Color(0xff747373)),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
