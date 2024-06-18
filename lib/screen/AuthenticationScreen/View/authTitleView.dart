import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pre_booking/utils/textLabel.dart';
import 'package:pre_booking/utils/appColors.dart';

class authTitleView extends StatelessWidget {
  const authTitleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 80.h,
        ),
        Row(
          children: [
            TextLable.appTextPoppins("Hey",
                size: 32.sp,
                fontWeight: FontWeight.w600,
                color: appColors.appPrimary),
            SizedBox(
              width: 4.w,
            ),
            TextLable.appTextPoppins("Foodie 👋🏼",
                size: 32.sp, fontWeight: FontWeight.w600, color: Colors.black),
          ],
        ),
        Row(
          children: [
            TextLable.appTextPoppins("Welcome to",
                size: 24.sp, fontWeight: FontWeight.w400, color: Colors.black),
            SizedBox(
              width: 4.w,
            ),
            TextLable.appTextPoppins("Prebooking",
                size: 25.sp,
                fontWeight: FontWeight.w700,
                color: appColors.appPrimary),
          ],
        ),
        TextLable.appTextPoppins("Crowd is waiting for you... ",
            size: 15.sp,
            fontWeight: FontWeight.w500,
            color: appColors.appTextGrey),
        SizedBox(
          height: 18.h,
        ),
      ],
    );
  }
}
