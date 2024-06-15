import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pre_booking/utils/appColors.dart';
import 'package:pre_booking/utils/textLabel.dart';

class SigninView extends StatelessWidget {
  SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 113.h,),
        Row(
          children: [
            TextLable.appTextPoppins("Hey",size: 32.sp,fontWeight: FontWeight.w600,color: appColors.appPrimary),
             TextLable.appTextPoppins("Foodie 👋🏼",size: 32.sp,fontWeight: FontWeight.w600,color: Colors.black),
          
          ],
        ),
        Row(
          children: [
            TextLable.appTextPoppins("Welcome to",size: 24.sp,fontWeight: FontWeight.w600,color:Colors.black ),
             TextLable.appTextPoppins("Prebooking",size: 32.sp,fontWeight: FontWeight.w700,color: appColors.appPrimary),
          
          ],
        ),
        TextLable.appText("Enter your registered email",size: 13.sp,fontWeight: FontWeight.w600,color:Colors.black ),
         SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: TextFormField(
                      maxLines: 1,
                      decoration: InputDecoration(
                          hintText: "test@gmail.com",
                          hintStyle: TextStyle(
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp,
                              color:appColors.appTextGrey),
                          border: InputBorder.none,
                          ),
                    ),
                  ),
            TextLable.appText("Enter your Password",size: 13.sp,fontWeight: FontWeight.w600,color:Colors.black ),
         SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: TextFormField(
                      maxLines: 1,
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp,
                              color:appColors.appTextGrey ),
                          border: InputBorder.none),
                    ),
                  ),
                   Row(
          children: [
            TextLable.appTextPoppins("Having issues?",size: 16.sp,fontWeight: FontWeight.w400,color:Colors.black ),
             TextLable.appTextPoppins("Contact us",size: 16.sp,fontWeight: FontWeight.w400,color: appColors.appPrimary),
          
          ],
        ),
      Container(
        width: 330.w,
        height: 60.w,
        decoration: BoxDecoration(color: appColors.appPrimary,borderRadius: BorderRadius.circular(7)),
      child:TextLable.appText("Sign In",size:20.sp,fontWeight: FontWeight.w700,color:appColors.screenBg ),
        
      ),

         Row(
          children: [
            TextLable.appTextPoppins("Don't have an account?",size: 16.sp,fontWeight: FontWeight.w400,color:Colors.black ),
             TextLable.appTextPoppins("Create now",size: 16.sp,fontWeight: FontWeight.w400,color: appColors.appPrimary),
          
          ],
        ),
           
      ],
    );
  }
}
