import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pre_booking/screen/HotelOverViewScreen/views/OverviewMenuItemView.dart';
import 'package:pre_booking/screen/HotelOverViewScreen/views/OverviewSpecial.dart';
import 'package:pre_booking/screen/HotelOverViewScreen/views/bookingBottomSheet.dart';
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
    return Stack(
      children: [
        Positioned(
          top: 0,
          bottom: 0,
          right: 0,
          left: 0,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  SizedBox(
                      height: 300.h,
                      width: MediaQuery.of(context).size.width,
                      child: FlutterCarousel(
                        options: CarouselOptions(
                            viewportFraction: 1,
                            slideIndicator: CircularSlideIndicator(
                                indicatorRadius: 3, itemSpacing: 10),
                            autoPlay: true),
                        items: [
                          ClipRRect(
                            // borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              "assets/hotel.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            // borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              "assets/hotel.png",
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      )),
                  Positioned(
                      bottom: 20.h,
                      right: 20.w,
                      child: Container(
                          width: 38.w,
                          height: 38.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xffD9D9D9).withOpacity(.2),
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white)),
                          child: Icon(
                            Icons.favorite,
                            color: appColors.appLike,
                          ))),
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
                            color: Colors.white,
                            size: 24.w,
                          ),
                        ),
                      ))
                ]),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextLable.appText("Razi Arabia",
                          fontWeight: FontWeight.w700,
                          size: 25.sp,
                          color: Colors.black),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 15,
                            color: Color(0xff727272).withOpacity(.72),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          TextLable.appText(
                            "Kalarcode, Alappuzha",
                            fontWeight: FontWeight.w500,
                            size: 12.sp,
                            color: Color(0xff727272).withOpacity(1),
                          ),
                          Expanded(child: Container()),
                          Image.asset(
                            "assets/icons/ratingStar.png",
                            width: 14,
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          TextLable.appText(" 4.9 ",
                              size: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: appColors.appTextGrey),
                          SizedBox(
                            width: 5.w,
                          ),
                          TextLable.appText("(10+)  Reviews",
                              fontWeight: FontWeight.w600,
                              size: 12.sp,
                              color: Color(0xff727272).withOpacity(1)),
                          SizedBox(
                            width: 3.w,
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Color(0xffBCBCBC),
                            size: 15,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextLable.appText("Description",
                          fontWeight: FontWeight.w700,
                          size: 18.sp,
                          color: Color(0xff747373)),
                      SizedBox(
                        height: 3.h,
                      ),
                      ReadMoreText(
                        "Razi Arabia restaurant is a an arabian, chines restaurant with application.... ",
                        trimMode: TrimMode.Line,
                        trimLines: 1,
                        colorClickableText: appColors.appPrimary,
                        trimCollapsedText: 'Read more',
                        trimExpandedText: 'Read less',
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w500),
                        moreStyle: TextStyle(
                            fontSize: 12.sp,
                            color: appColors.appPrimary,
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w600),
                        lessStyle: TextStyle(
                            fontSize: 12.sp,
                            color: appColors.appPrimary,
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w600),
                        //  fontWeight: FontWeight.w600,
                        //  size: 17.sp,
                        //  color: Color(0xff747373)),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextLable.appText("Our Specials",
                          fontWeight: FontWeight.w700,
                          size: 18.sp,
                          color: Color(0xff747373)),
                      SizedBox(
                        height: 7.h,
                      ),
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
                      SizedBox(
                        height: 15.h,
                      ),
                      TextLable.appText("Menu List",
                          fontWeight: FontWeight.w700,
                          size: 18.sp,
                          color: Color(0xff747373)),
                      SizedBox(
                        height: 8.h,
                      ),
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
                              ))),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 17.h,
          right: 20.h,
          left: 20.h,
          child: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.white,
                builder: (context) => bookingBottomSheet(),
              );
            },
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
        )
      ],
    );
  }
}
