import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pre_booking/screen/HotelOverViewScreen/Overview.dart';
import 'package:pre_booking/screen/HotelOverViewScreen/views/OverviewViewScreen.dart';
import 'package:pre_booking/utils/appColors.dart';
import 'package:pre_booking/utils/appIcons.dart';
import 'package:pre_booking/utils/textLabel.dart';

class HPopularCard extends StatelessWidget {
  HPopularCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 24.w),
      child: InkWell(
        onTap: () {
          Get.to(() => OvervieScreen(), transition: Transition.rightToLeft);
        },
        child: Stack(
          children: [
            SizedBox(
                height: 300.h,
                width: 300.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    "https://img.restaurantguru.com/r8eb-Razi-Arabia-design.jpg",
                    fit: BoxFit.cover,
                  ),
                )),
            Positioned(
                top: 0,
                right: 0,
                bottom: 0,
                left: 0,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: LinearGradient(
                          colors: [
                            Color(0xff000000).withOpacity(.14),
                            Color(0xff000000).withOpacity(.24),
                            Color(0xff000000).withOpacity(.34),
                            Color(0xff000000).withOpacity(.70),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                )),
            Positioned(
                bottom: 10.h,
                left: 15.w,
                right: 15.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextLable.appText("Razi Arabia",
                        fontWeight: FontWeight.w700,
                        size: 16.sp,
                        color: Colors.white),
                    TextLable.appText(
                        "Non-veg Arabian Drinks".split(" ").join("  ●  "),
                        fontWeight: FontWeight.w600,
                        size: 11.sp,
                        color: Color.fromARGB(246, 239, 239, 239)
                            .withOpacity(.85)),
                    TextLable.appText(
                        "Kalarkood , Alappuzha , Near Alappuzha Bypass",
                        fontWeight: FontWeight.w600,
                        size: 10.sp,
                        color: Color.fromARGB(255, 198, 193, 193))
                  ],
                )),
            Positioned(
                top: 15.h,
                left: 15.w,
                child: Container(
                  width: 76.w,
                  height: 42.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        appIcons.ratingStar,
                        width: 17.w,
                      ),
                      TextLable.appText(" 4.9 ",
                          size: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: appColors.appTextGrey)
                    ],
                  ),
                )),
            Positioned(
                top: 18.h,
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
                ))
          ],
        ),
      ),
    );
  }
}
