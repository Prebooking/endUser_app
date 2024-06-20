import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pre_booking/screen/DashboardScreen/views/BookingView.dart';
import 'package:pre_booking/screen/DashboardScreen/views/DashboardView.dart';
import 'package:pre_booking/screen/ProfileScreen/views/ProfileScreen.dart';
import 'package:pre_booking/utils/appColors.dart';
import 'package:pre_booking/utils/appIcons.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class DashboardScreenMain extends StatefulWidget {
  DashboardScreenMain({super.key});

  @override
  State<DashboardScreenMain> createState() => _DashboardScreenMainState();
}

class _DashboardScreenMainState extends State<DashboardScreenMain> {
  int currentIndex = 0;
  PageController pageCtrl = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.screenBg,
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() {
          currentIndex = i;
          pageCtrl.animateToPage(i,
              duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
        }),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Image.asset(
              (currentIndex == 0) ? appIcons.Shomebutton : appIcons.homebutton,
              width: 20.w,
            ),
            title: Text("Home"),
            selectedColor: appColors.appPrimary,
          ),

          SalomonBottomBarItem(
            icon: Image.asset(
              (currentIndex == 1)
                  ? appIcons.Sbookingbutton
                  : appIcons.bookingbutton,
              width: 20.w,
            ),
            title: Text("Bookings"),
            selectedColor: appColors.appPrimary,
          ),
          SalomonBottomBarItem(
            icon: Image.asset(
              (currentIndex == 2)
                  ? appIcons.SunFavorite
                  : appIcons.favoriteHome,
              width: 20.w,
            ),
            title: Text("Favorite"),
            selectedColor: appColors.appPrimary,
          ),
          SalomonBottomBarItem(
            icon: Image.asset(
              (currentIndex == 3)
                  ? appIcons.SprofileButton
                  : appIcons.profileButton,
              width: 20.w,
            ),
            title: Text("Profile"),
            selectedColor: appColors.appPrimary,
          ),
        ],
      ),
      body: PageView(
        controller: pageCtrl,
        children: [DashboardView(), BookingListView(),ProfileScreen()],
      ),
    );
  }
}
