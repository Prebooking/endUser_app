import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pre_booking/screen/DashboardScreen/controller/controller.dart';

class HBannerView extends StatelessWidget {
  bool isSeconday = false;
  HBannerView({super.key, this.isSeconday = false});

  DashboardController dashCtrl = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (_) {
      return FlutterCarousel(
        options: CarouselOptions(
            height: 100.h,
            viewportFraction: 1,
            showIndicator: false,
            autoPlay: true),
        items: [
          if (!isSeconday)
            for (var data in dashCtrl.promotionalSliderList)
              ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.network(
                    data,
                    fit: BoxFit.cover,
                  )),
          if (isSeconday)
            for (var data in dashCtrl.secondarySliderList)
              ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.network(data))
        ],
      );
    });
  }
}
