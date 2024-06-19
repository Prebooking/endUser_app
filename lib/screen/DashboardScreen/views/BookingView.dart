import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pre_booking/screen/DashboardScreen/views/BookingCard.dart';
import 'package:pre_booking/utils/textLabel.dart';

class BookingListView extends StatefulWidget {
  const BookingListView({super.key});

  @override
  State<BookingListView> createState() => _BookingListViewState();
}

class _BookingListViewState extends State<BookingListView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.only(top: 50.h,left: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Row(
                
                children: [
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
                            )),
                            SizedBox(width: 10.w,),
                        TextLable.appText("Bookings",color: Colors.black,fontWeight: FontWeight.w700,size: 20.sp)
                ],
              ),
              SizedBox(height: 15.h,),
            
               
                      BookingCard(),
                       BookingCard(),
                        BookingCard(),
                         BookingCard(),
                
              
              
          ],
        ),
      ),
    );
  }
}
