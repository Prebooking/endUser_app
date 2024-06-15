import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pre_booking/screen/DashboardScreen/views/DashboardView.dart';
import 'package:pre_booking/utils/appColors.dart';
import 'package:pre_booking/utils/appIcons.dart';

class DashboardScreenMain extends StatefulWidget {
  DashboardScreenMain({super.key});

  @override
  State<DashboardScreenMain> createState() => _DashboardScreenMainState();
}

class _DashboardScreenMainState extends State<DashboardScreenMain> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.screenBg,
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        // height: 55.h,
        curveSize: 90,
        activeColor: Colors.transparent,
        top: -20,

        initialActiveIndex: currentIndex,
        items: [
          TabItem(
            icon: Image.asset(
              (currentIndex == 0) ? appIcons.Shomebutton : appIcons.homebutton,
              width: 22.w,
            ),
          ),
          TabItem(
            icon: Image.asset(
              (currentIndex == 1)
                  ? appIcons.Sbookingbutton
                  : appIcons.bookingbutton,
              //  width: 22.w,
            ),
          ),
          TabItem(
            icon: Image.asset(
              (currentIndex == 2)
                  ? appIcons.SunFavorite
                  : appIcons.favoriteHome,
//width: 22.w,
            ),
          ),
          TabItem(
            icon: Image.asset(
              (currentIndex == 3)
                  ? appIcons.SprofileButton
                  : appIcons.profileButton,
              //  width: 22.w,
            ),
          ),
        ],
        onTap: (int i) => setState(() {
          currentIndex = i;
        }),
      ),
      body: DashboardView(),
    );
  }
}
