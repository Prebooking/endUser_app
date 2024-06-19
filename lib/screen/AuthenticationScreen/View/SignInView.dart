import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pre_booking/screen/AuthenticationScreen/SignUpScreenMain.dart';
import 'package:pre_booking/screen/AuthenticationScreen/View/authReportBt.dart';
import 'package:pre_booking/screen/AuthenticationScreen/View/authTitleView.dart';
import 'package:pre_booking/screen/DashboardScreen/DashboardScreenMain.dart';
import 'package:pre_booking/utils/appColors.dart';
import 'package:pre_booking/utils/inputTextField.dart';
import 'package:pre_booking/utils/textLabel.dart';

class SigninView extends StatelessWidget {
  SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.w, right: 25.w),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                authTitleView(),
                SizedBox(
                  height: 10.h,
                ),
                InputTextField(
                    title: "Enter your registered email",
                    hint: "test@gmail.com"),
                SizedBox(
                  height: 17.h,
                ),
                InputTextField(title: "Enter your password", hint: "Password"),
                SizedBox(
                  height: 4.h,
                ),
                AuthReportButton(),
              ],
            ),
          )),
          GestureDetector(
            onTap: () {
              Get.to(() => DashboardScreenMain(),
                  transition: Transition.rightToLeft);
            },
            child: Container(
              width: 320.w,
              height: 50.w,
              margin: EdgeInsets.only(left: 6.w),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: appColors.appPrimary,
                  borderRadius: BorderRadius.circular(10)),
              child: TextLable.appText("Sign In",
                  size: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: appColors.screenBg),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 29.w, right: 29.w),
            child: Row(
              children: [
                TextLable.appTextPoppins("Don't have an account?",
                    size: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
                SizedBox(
                  width: 2.w,
                ),
                GestureDetector(
                  onTap: () {
                    Get.offAll(() => SignUpScreenMain(),
                        transition: Transition.rightToLeft);
                  },
                  child: TextLable.appTextPoppins("Create now",
                      size: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: appColors.appPrimary),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25.h,
          )
        ],
      ),
    );
  }
}
