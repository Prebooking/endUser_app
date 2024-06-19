import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pre_booking/screen/AuthenticationScreen/SignInScreenMain.dart';
import 'package:pre_booking/screen/AuthenticationScreen/View/authReportBt.dart';
import 'package:pre_booking/screen/AuthenticationScreen/View/authTitleView.dart';
import 'package:pre_booking/screen/DashboardScreen/DashboardScreenMain.dart';
import 'package:pre_booking/utils/appColors.dart';
import 'package:pre_booking/utils/inputTextField.dart';
import 'package:pre_booking/utils/textLabel.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.w, right: 25.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 29.h,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                authTitleView(),
                SizedBox(
                  height: 10.h,
                ),
                InputTextField(title: "Enter your name", hint: "John Luther"),
                SizedBox(
                  height: 17.h,
                ),
                InputTextField(
                    title: "Enter your email id", hint: "test@gmail.com"),
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
              child: TextLable.appText("Sign up",
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
                TextLable.appTextPoppins("Already have an account? ",
                    size: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
                GestureDetector(
                  onTap: () {
                    Get.offAll(() => SignInScreenMain(),
                        transition: Transition.rightToLeft);
                  },
                  child: TextLable.appTextPoppins("Sign In",
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
