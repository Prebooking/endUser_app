import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pre_booking/screen/DashboardScreen/controller/controller.dart';
import 'package:pre_booking/screen/DashboardScreen/views/HPopularCard.dart';
import 'package:pre_booking/screen/DashboardScreen/views/HbannerView.dart';
import 'package:pre_booking/utils/appColors.dart';
import 'package:pre_booking/utils/appIcons.dart';
import 'package:pre_booking/utils/textLabel.dart';

class DashboardView extends StatelessWidget {
  DashboardView({super.key});
  DashboardController DashCtrl = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (_) {
      return Padding(
        padding: EdgeInsets.only(
          top: 50.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextLable.appText("Hello  ${DashCtrl.userName} 👋",
                            color: Colors.black,
                            size: 16.sp,
                            fontWeight: FontWeight.w500),
                        TextLable.appText("Find Restrauants near you",
                            color: Colors.black,
                            size: 19.sp,
                            fontWeight: FontWeight.w700),
                      ],
                    ),
                    Expanded(child: Container()),
                    Image.asset(
                      appIcons.notificationBell,
                      height: 24.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                height: 56.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Row(
                  children: [
                    Image.asset(
                      appIcons.SearchIcon,
                      width: 30.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: TextFormField(
                        maxLines: 1,
                        decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp),
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              HBannerView(),
              SizedBox(
                height: 22.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  TextLable.appText("Most Popular",
                      size: 20.sp, fontWeight: FontWeight.w700),
                  Expanded(child: Container()),
                  TextLable.appText("See All ", color: appColors.appYellow),
                  SizedBox(
                    width: 20.w,
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                //   width: 291,
                width: double.infinity,
                height: 300.h,
                child: FlutterCarousel(
                  options: CarouselOptions(
                      viewportFraction: .78,
                      autoPlay: true,
                      enableInfiniteScroll: true),
                  items: [
                    for (var data in DashCtrl.popularHotelList)
                      HPopularCard(
                        model: data,
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              HBannerView(
                isSeconday: true,
              ),
            ],
          ),
        ),
      );
    });
  }
}
