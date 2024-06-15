import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HBannerView extends StatelessWidget {
  const HBannerView({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel(
      options: CarouselOptions(
          height: 100.h,
          viewportFraction: 1,
          showIndicator: false,
          autoPlay: true),
      items: [
        for (int i = 0; i < 3; i++)
          ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Image.asset("assets/table.png"))
      ],
    );
  }
}
