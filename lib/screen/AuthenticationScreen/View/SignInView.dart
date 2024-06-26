import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:pre_booking/screen/AuthenticationScreen/Controller/AuthenticationController.dart';
import 'package:pre_booking/screen/AuthenticationScreen/SignUpScreenMain.dart';
import 'package:pre_booking/screen/AuthenticationScreen/View/authReportBt.dart';
import 'package:pre_booking/screen/AuthenticationScreen/View/authTitleView.dart';
import 'package:pre_booking/screen/DashboardScreen/DashboardScreenMain.dart';
import 'package:pre_booking/utils/appColors.dart';
import 'package:pre_booking/utils/inputTextField.dart';
import 'package:pre_booking/utils/textLabel.dart';

class SigninView extends StatelessWidget {
  SigninView({super.key});
  AuthenticationController authCtrl = Get.put(AuthenticationController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.w, right: 25.w),
      child: GetBuilder<AuthenticationController>(builder: (_) {
        return Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
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
                  InputTextField(
                      title: "Enter your registered email",
                      controller: authCtrl.emailText,
                      hint: "test@gmail.com"),
                  SizedBox(
                    height: 17.h,
                  ),
                  InputTextField(
                      title: "Enter your password",
                      hint: "Password",
                      controller: authCtrl.passwordText,
                      isHide: true),
                  SizedBox(
                    height: 4.h,
                  ),
                  AuthReportButton(),
                ],
              ),
            )),
            GestureDetector(
              onTap: () {
                if (authCtrl.loading) {
                  Fluttertoast.showToast(msg: "Please wait");
                } else if (authCtrl.emailText.text.isNotEmpty &&
                    authCtrl.passwordText.text.isNotEmpty) {
                  authCtrl.LoginAccount();
                } else {
                  Fluttertoast.showToast(
                      msg: "Please fill all fields to submit");
                }
              },
              child: Container(
                width: 320.w,
                height: 50.w,
                margin: EdgeInsets.only(left: 6.w),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: appColors.appPrimary,
                    borderRadius: BorderRadius.circular(10)),
                child: (authCtrl.loading)
                    ? LoadingAnimationWidget.staggeredDotsWave(
                        color: Colors.white, size: 24)
                    : TextLable.appText("Sign In",
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
                      Get.off(() => SignUpScreenMain(),
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
        );
      }),
    );
  }
}
