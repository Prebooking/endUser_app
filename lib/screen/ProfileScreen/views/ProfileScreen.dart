import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pre_booking/utils/textLabel.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 50.h,left: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             
                  Positioned(
                            top: 50.h,
                            left: 20.w,
                            child: GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                width: 38.w,
                                height: 38.w,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Color(0xffD9D9D9).withOpacity(.2),
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white)),
                                child: Icon(
                                  Icons.chevron_left,
                                  color: Color(0xff495159),
                                  size: 30.w,
                                ),
                              ),
                            )),
                           Align(
                            alignment: Alignment.center,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(radius: 65.w,),
                                TextLable.appText("Sabarinath P",color:Colors.black,fontWeight: FontWeight.w700,size: 28.sp )
                          ,SizedBox(height: 4.h,) ,TextLable.appText("Joined June 19,2023" ,color:Color(0xffBABABA),fontWeight: FontWeight.w600,size: 18.sp )
                          ,SizedBox(height: 24.h,) ,
                          Container(
                width: 320.w,
                height: 217.h,
                //margin: EdgeInsets.only(left: 5.w),
                padding: EdgeInsets.only(top: 15.h,left: 12.w,right: 12.w),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade200,width: 1.w),color: Colors.white,borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextLable.appText("General",color:Colors.black,fontWeight: FontWeight.w700,size: 28.sp )
                          ,SizedBox(height: 20.h,),
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             SizedBox(
                               width: 20.w,
                               height: 22.w,
                               child: Image.asset(
                                 "assets/icons/person.png",
                                 fit: BoxFit.cover,
                               ),
                             ),
                             SizedBox(
                               width: 12.w,
                             ),
                             
                             TextLable.appText("Sabarinath P",
                                                   fontWeight: FontWeight.w600,
                                                   size: 18.sp,
                                                   color: Colors.black),
                    ],
                         ),
                    SizedBox(
                                     height: 8.h,
                                   ),
        Container(width: MediaQuery.of(context).size.width,
        height:2.h,color: Colors.grey.shade200 ,),
          SizedBox(
                                     height: 8.h,
                                   ),
        Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                    SizedBox(
                               width: 20.w,
                               height: 22.w,
                               child: Image.asset(
                                 "assets/icons/send.png",
                                 fit: BoxFit.cover,
                               ),
                             ),
                             SizedBox(
                               width: 8.w,
                             ),
                             
                             TextLable.appText("sabarinath76547@gmail.com",
                                                   fontWeight: FontWeight.w600,
                                                   size: 18.sp,
                                                   color: Colors.black),
                  
                                  
                          
                                 ],
                               ),
                                 SizedBox(
                                     height: 8.h,
                                   ),
         Container(width: MediaQuery.of(context).size.width,
        height:2.h,color: Colors.grey.shade200 ,),
          SizedBox(
                                     height: 8.h,
                                   ),
                               Row(
                                children: [
                                  SizedBox(
                               width: 20.w,
                               height: 22.w,
                               child: Image.asset(
                                 "assets/icons/contact.png",
                                 fit: BoxFit.cover,
                               ),
                                                              ),
                                                              SizedBox(
                               width: 8.w,
                                                              ),
                                                              
                                                              TextLable.appText("99999999999",
                                                   fontWeight: FontWeight.w600,
                                                   size: 18.sp,
                                                   color: Colors.black),
                                                  
                                ],
                               ),
                              
                ],
              ),
              ),SizedBox(height: 45.h,),
                      Container(
                        width: 180.w,
                        height: 33.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Color(0xffF3F3F3)),
                        child: TextLable.appText("Sign Out",color:Color(0xffBB231E),fontWeight: FontWeight.w600,size: 24.sp ))

                          ,TextLable.appText("Version 1.0.0 (001) ",color:Color(0xff797F86),fontWeight: FontWeight.w400,size: 10.sp )
                          ,
                           TextLable.appText("@2024,Powered by Sabarinath Inc",color:Color(0xff797F86),fontWeight: FontWeight.w400,size: 10.sp ),
                     
                          Padding(
                            padding: EdgeInsets.only(left: 75.w,right: 20.w),
                            child: Row(
                             crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextLable.appText("our",color:Color(0xff797F86),fontWeight: FontWeight.w500,size: 12.sp ),
                                TextLable.appText("Privacy Policy",color:Color(0xffBB231E),fontWeight: FontWeight.w500,size: 12.sp )
                            ,TextLable.appText("&",color:Color(0xff797F86),fontWeight: FontWeight.w500,size: 12.sp )
                            ,TextLable.appText("Terms and Conditions",color:Color(0xffBB231E),fontWeight: FontWeight.w500,size: 12.sp)
                            ,
                              ],
                            ),
                          )
                          

                              ],
                            )),
                            
                            
                            
                            ],),);
  }
}