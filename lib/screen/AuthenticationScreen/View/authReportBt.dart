import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pre_booking/utils/textLabel.dart';
import 'package:pre_booking/utils/appColors.dart';

class AuthReportButton extends StatelessWidget {
  AuthReportButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container()),
        TextLable.appTextPoppins("Having issues? ",
            size: 12.sp, fontWeight: FontWeight.w500, color: Colors.black),
        SizedBox(
          width: 2.w,
        ),
        TextLable.appTextPoppins("Contact us",
            size: 12.sp,
            fontWeight: FontWeight.w600,
            color: appColors.appPrimary),
      ],
    );
  }
}
