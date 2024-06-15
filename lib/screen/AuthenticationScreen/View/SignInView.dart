import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pre_booking/utils/appColors.dart';
import 'package:pre_booking/utils/textLabel.dart';

class SigninView extends StatelessWidget {
  SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 25.w,right: 25.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 113.h,),
          Row(
            children: [
              TextLable.appTextPoppins("Hey",size: 32.sp,fontWeight: FontWeight.w600,color: appColors.appPrimary),
              SizedBox(width: 4.w,),
               TextLable.appTextPoppins("Foodie 👋🏼",size: 32.sp,fontWeight: FontWeight.w600,color: Colors.black),
            
            ],
          ),
          Row(
            children: [
              TextLable.appTextPoppins("Welcome to",size: 24.sp,fontWeight: FontWeight.w400,color:Colors.black ),
               SizedBox(width: 4.w,),
               TextLable.appTextPoppins("Prebooking",size: 32.sp,fontWeight: FontWeight.w700,color: appColors.appPrimary),
            
            ],
          ),
        
          TextLable.appTextPoppins("Crowd is waiting for you... ",size: 15.sp,fontWeight: FontWeight.w500,color:appColors.appTextGrey ),
        SizedBox(height: 18.h,),
          TextLable.appText("Enter your registered email",size: 13.sp,fontWeight: FontWeight.w600,color:Colors.black ),
          SizedBox(height: 9.h,)
           ,SizedBox(
                      width: 10.w,
                    ),
                    Container(
                       decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.only(left: 8),
                       width: 330.w,
                      height: 60.h,
                      child: TextFormField(
                        maxLines: 1,
                        decoration: InputDecoration(
                       //  focusColor: appColors.appTextGrey,
                            hintText: "test@gmail.com",
                            hintStyle: TextStyle(
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                               
                                
                                ),
                                // fillColor:appColors.appTextGrey,
                            border: InputBorder.none    ),
                          
                      ),
                    ),
                     SizedBox(height: 17.h,),
              TextLable.appText("Enter your Password",size: 13.sp,fontWeight: FontWeight.w600,color:Colors.black ),
               SizedBox(height: 9.h,),
           SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.only(left: 8),
                      width: 330.w,
                      height: 60.h,
                      child: TextField(
                        maxLines: 1,
                        decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                                color:appColors.appTextGrey ),
                            border:   InputBorder.none,)),
                      ),
                SizedBox(height: 4.h,),
                     Row(
            children: [
              Expanded(child: Container()),
              TextLable.appTextPoppins("Having issues?",size: 14.sp,fontWeight: FontWeight.w600,color:Colors.black ),SizedBox(width: 2.w,)
               ,TextLable.appTextPoppins("Contact us",size: 14.sp,fontWeight: FontWeight.w600,color: appColors.appPrimary),
            
            ],
          ),
          Expanded(child: Container()),
        Container(
          width: 330.w,
          height: 60.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: appColors.appPrimary,borderRadius: BorderRadius.circular(10)),
        child:TextLable.appText("Sign In",size:20.sp,fontWeight: FontWeight.w700,color:appColors.screenBg ),
          
        ),
       SizedBox(height: 4.h,),
           Padding(
             padding:  EdgeInsets.only(left: 18.w,right: 18.w),
             child: Row(
              children: [
                TextLable.appTextPoppins("Don't have an account?",size: 16.sp,fontWeight: FontWeight.w600,color:Colors.black ),SizedBox(width: 2.w,),
                 TextLable.appTextPoppins("Create now",size: 16.sp,fontWeight: FontWeight.w600,color: appColors.appPrimary),
              
              ],
                       ),
           ),
           SizedBox(height: 55.h,)  
        ],
      ),
    );
  }
}
