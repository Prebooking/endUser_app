import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pre_booking/screen/HotelOverViewScreen/views/OverviewSpecial.dart';
import 'package:pre_booking/utils/appColors.dart';
import 'package:pre_booking/utils/appIcons.dart';
import 'package:pre_booking/utils/textLabel.dart';
import 'package:readmore/readmore.dart';

class OverviewViewSreen extends StatefulWidget {
  const OverviewViewSreen({super.key});

  @override
  State<OverviewViewSreen> createState() => _OverviewViewSreenState();
}

class _OverviewViewSreenState extends State<OverviewViewSreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
             SizedBox(
             height: 293.h,
             width:  MediaQuery.of(context).size.width,
             child: ClipRRect(
             // borderRadius: BorderRadius.circular(25),
               child: Image.asset("assets/hotel.png",fit: BoxFit.cover,),
               //Image.network(
               //   "https://img.restaurantguru.com/r8eb-Razi-Arabia-design.jpg",),
                
               
             )),
             Positioned(
                  top: 245.h,
                  right: 18.w,
                  child: Container(
                    width: 38.w,
                    height: 38.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xffD9D9D9).withOpacity(.17),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white)),
                    child: Image.asset(
                      appIcons.favorite,
                      width: 24.w,
                    ),
                  )),
                  Positioned(
                  top: 24.h,
                  left: 18.w,
                  child: Container(
                    width: 38.w,
                    height: 38.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xffD9D9D9).withOpacity(.17),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white)),
                    child:   Icon(Icons.chevron_left,color: Color(0xffBCBCBC),size: 24.w,
                  
                    ),
                  ))
        ]),
           SizedBox(height: 20.h,),
          Padding(
            padding: EdgeInsets.only(left: 20.w,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextLable.appText("Razi Arabia",
                         fontWeight: FontWeight.w700,
                         size: 26.sp,
                         color: Colors.black),
                          SizedBox(height: 4.h,),
                  Row(
                    children: [
                     Image.asset("assets/icons/loc.png",width: 13,),
                     SizedBox(width: 5.w,),
                      TextLable.appText("Kalarcode, Alappuzha",
                         fontWeight: FontWeight.w600,
                         size: 14.sp,
                         color: Color(0xffBCBCBC)),
                         SizedBox(width: 6.w,),
                         Image.asset("assets/icons/ratingStar.png",width: 14,),
                   SizedBox(width: 1.w,), TextLable.appText(" 4.9 ",
                            size: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: appColors.appTextGrey),
                             SizedBox(width: 7.w,),
                             TextLable.appText("(10+)  Reviews",
                         fontWeight: FontWeight.w600,
                         size: 14.sp,
                         color: Color(0xffBCBCBC)),
                         SizedBox(width: 3.w,),
                         Icon(Icons.chevron_right,color: Color(0xffBCBCBC),size: 19,)
                    ],
                  )  ,
                  SizedBox(height: 20.h,),
                  TextLable.appText("Description",
                         fontWeight: FontWeight.w700,
                         size: 20.sp,
                         color: Color(0xff747373)),
                         SizedBox(height: 3.h,),
                         ReadMoreText(
                           "Razi Arabia restaurant is a an arabian, chines restaurant with application.... ",
                          trimMode: TrimMode.Line,
                                 trimLines: 1,
                       colorClickableText: appColors.appPrimary,
                       trimCollapsedText: 'Read more',
                        trimExpandedText: 'Read less',
                       moreStyle: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600),
                          //  fontWeight: FontWeight.w600,
                          //  size: 17.sp,
                          //  color: Color(0xff747373)),
                         ),
                         
                             SizedBox(height: 10.h,),
      
                         TextLable.appText("Our Specials",
                         fontWeight: FontWeight.w700,
                         size: 20.sp,
                         color: Color(0xff747373)),
                        SizedBox(height: 7.h,),
                         Container(
               
      
              //  height: 90.h,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      
                      OverViewBannerScreen(),
                      OverViewBannerScreen(),
                      OverViewBannerScreen(),
                       OverViewBannerScreen(),
                    ],
                  ),
                ),
              ),
                SizedBox(height: 15.h,),
      
                         TextLable.appText("Menu List",
                         fontWeight: FontWeight.w700,
                         size: 20.sp,
                         color: Color(0xff747373)),
                        SizedBox(height: 8.h,), 
                      
                        Container(
                          
                          
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            
                            child: Column(
                              children: [
                                OverViewItemScreen(),
                                 OverViewItemScreen(),
                                  OverViewItemScreen(),
                                   OverViewItemScreen(),
                              ],
                            ))) ,
                        SizedBox(height: 10.h,),
                        Align(
                          alignment: Alignment.center,
                          child: ClipRect(
                            child: Container(
                                          width: 320.w,
                                          height: 50.w,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: appColors.appPrimary,
                                              borderRadius: BorderRadius.circular(10)),
                                          child: TextLable.appText("Reserve Now",
                                              size: 20.sp,
                                              fontWeight: FontWeight.w700,
                                              color: appColors.screenBg),
                                        ),
                          ),
                        ),

      
              ],
            ),
          )
        ],
      ),
    );
  }
}