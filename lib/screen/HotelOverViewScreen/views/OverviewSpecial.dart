import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pre_booking/utils/textLabel.dart';

class OverViewBannerScreen
 extends StatelessWidget {
  const OverViewBannerScreen
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 3.w),
      child: SizedBox(
         
        width: 85.w,
        height: 85.h,
      //  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.black),
        
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child:Image.asset("assets/hotel.png",fit: BoxFit.cover,) ,
           ),
      ),
    );

  }
}
class OverViewItemScreen extends StatelessWidget {
  const OverViewItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Container(
                            width: 335.w,
                            height: 66.h,
                            child: Row(
                              children: [
                                SizedBox(
                                  width:80.w ,
                                  height: 85.w,
                                  child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child:Image.asset("assets/hotel.png",fit: BoxFit.cover,) ,
             ),
                                ),
                                SizedBox(width: 8.w,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 5.h,),
                                     TextLable.appText("Half Chicken Manthi Spicy",
                           fontWeight: FontWeight.w600,
                           size: 15.sp,
                           color: Color(0xff747373)),
                          SizedBox(height: 5.h,), 
                          Row(children: [
                            TextLable.appText("Rs 320",
                           fontWeight: FontWeight.w600,
                           size: 15.sp,
                           color: Colors.black),
                           SizedBox(width: 5.w,),
                           TextLable.appText("Rs 340",
                           fontWeight: FontWeight.w600,
                          
                           size: 11.sp,
                           color: Color(0xff747373)),
                          ],),
                                
                                  ],
                                )
                              ],
                            ),
                          ),
    ) ;
  }
}