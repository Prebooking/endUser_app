import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pre_booking/utils/textLabel.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(bottom: 5.h),
      child: Container(
                width: 335.w,
                height: 240.h,
                margin: EdgeInsets.only(left: 5.w),
                padding: EdgeInsets.only(top: 15.h),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade200,width: 1.w),color: Colors.white,borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                   Padding(
                     padding:  EdgeInsets.only(left:10.h),
                     child: Row(
                             children: [
                               SizedBox(
                                 width: 80.w,
                                 height: 60.w,
                                 child: ClipRRect(
                                   borderRadius: BorderRadius.circular(10),
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
                                     height: 3.h,
                                   ),
                                   TextLable.appText("Edward Livingston",
                      fontWeight: FontWeight.w700,
                      size: 14.sp,
                      color: Colors.black),
                                  
                                   TextLable.appText("ARC 201, Indeevaram, Jawahar Nagar,\n Kowdiar PO",
                      fontWeight: FontWeight.w600,
                      size: 12.sp,
                                     
                      color: Color(0xff747373),),
                                 ],
                               )
                             ],
                           ),
                   ),
                    SizedBox(
                                     height: 6.h,
                                   ),
        Container(width: MediaQuery.of(context).size.width,
        height:2.h,color: Colors.grey.shade200 ,),
        Padding(
          padding:  EdgeInsets.only(left:15.h,top: 10.h),
          child: Row(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     
                                     TextLable.appText("Book ID:",
                        fontWeight: FontWeight.w700,
                        size: 14.sp,
                        color: Colors.black),
                        SizedBox(width: 2.w,),
                        TextLable.appText("#BOK90213",
                        fontWeight: FontWeight.w600,
                        size: 12.sp,
                        color: Colors.black),
                            
                                   ],
                                 ),
        ),
                               Padding(
                                 padding: EdgeInsets.only(left:15.h,top: 6.h),
                                 child: Row(
                                  children: [
                                     Column(
                                       children: [
                                         TextLable.appText("No of Seats",
                                                             fontWeight: FontWeight.w700,
                                                             size: 12.sp,
                                           
                                                             color:Colors.black ,),
                                                             TextLable.appText("10",
                                                             fontWeight: FontWeight.w600,
                                                             size: 11.sp,
                                           
                                                             color:Colors.black ,),
                                 
                                       ],
                                     ),
                                     Expanded(child: Container()),
                                     Column(
                                       children: [
                                         TextLable.appText("Check in Time",
                                                                 fontWeight: FontWeight.w700,
                                                                 size: 12.sp,
                                               
                                                                 color:Colors.black ,),SizedBox(height: 5.h,),
                                       TextLable.appText("23-May-2024 11:30 PM",
                                                             fontWeight: FontWeight.w600,
                                                             size: 11.sp,
                                                                  
                                                             color:Colors.black ,),],
                                     ),
                                     SizedBox(width: 20.w,)                       
                                  ],
                                 ),
                               ),
                               SizedBox(height: 14.h,),
                               Row(
                                children: [
                                  Container(
                                    width:130.w,
                                    height: 50.h,
                                      margin: EdgeInsets.only(left: 15.w),
                                      alignment: Alignment.center,
                                     decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade200,width: 1.w),color: Colors.white,borderRadius: BorderRadius.circular(10)),
                                     child: Row(
                                      children: [
                                        SizedBox(width: 10.w,) ,
                                        SizedBox(width: 25.w,height: 25.h,child: Image.asset("assets/icons/contact.png"),),
                                   SizedBox(width: 5.w,) ,    TextLable.appText("Contact",
                                                             fontWeight: FontWeight.w600,
                                                             size: 14.sp,
                                                                  
                                                             color:Color(0xff2C2C2C) ,),
                                      ],
                                     ),
                                  ),
                                  SizedBox(width:35.w ,),
                                    Container(
                                    width:130.w,
                                    height: 50.h,
                                  alignment: Alignment.center,
                                     decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade200,width: 1.w),color: Colors.white,borderRadius: BorderRadius.circular(10)),
                                     child: Row(
                                      children: [
                                          SizedBox(width: 10.w,) , 
                                        SizedBox(width: 25.w,height: 25.h,child: Image.asset("assets/icons/location.png"),),
                                   SizedBox(width: 5.w,) ,    TextLable.appText("Location",
                                                             fontWeight: FontWeight.w600,
                                                             size: 14.sp,
                                                                  
                                                             color:Color(0xff2C2C2C) ,),
                                      ],
                                     ),
                                  ),
                                ],
                               )
                ],
              ),
              ),
    );
  }
}