import 'package:flutter/material.dart';
//import 'package:pre_booking/screen/HotelOverViewScreen/OverviewView.dart';
import 'package:pre_booking/screen/HotelOverViewScreen/views/OverviewViewScreen.dart';

class OvervieScreen extends StatefulWidget {
  const OvervieScreen({super.key});

  @override
  State<OvervieScreen> createState() => _OvervieScreenState();
}

class _OvervieScreenState extends State<OvervieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:OverviewViewSreen()
    );
  }
}