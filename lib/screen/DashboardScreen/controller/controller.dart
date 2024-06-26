import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:pre_booking/screen/DashboardScreen/model/popularHotelModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardController extends GetxController {
  String userID = "";
  String userName = "";

  loadUser() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    userName = pref.getString("NAME") ?? "";
    userID = pref.getString("EMAIL") ?? "";
    print(userName);
    update();
  }

  List<String> promotionalSliderList = [];
  List<String> secondarySliderList = [];

  fetchPromotionalSlider() {
    promotionalSliderList.clear();
    secondarySliderList.clear();
    FirebaseFirestore db = FirebaseFirestore.instance;
    db
        .collection("customization")
        .doc("banner")
        .collection("default")
        .get()
        .then((value) {
      for (var data in value.docs) {
        promotionalSliderList.add(data.get("image"));
      }
    });

    update();
    //FirebaseFirestore db = FirebaseFirestore.instance;
    db
        .collection("customization")
        .doc("banner")
        .collection("secondary")
        .get()
        .then((value) {
      for (var data in value.docs) {
        secondarySliderList.add(data.get("image"));
      }
    });
    update();
  }

  List<popularHotelModel> popularHotelList = [];

  loadPopularHotel() {
    popularHotelList = [];
    FirebaseFirestore db = FirebaseFirestore.instance;
    db
        .collection("popular_hotel")
        .doc("Alappuzha")
        .collection("hotel_list")
        .get()
        .then((value) {
      for (var data in value.docs) {
        popularHotelList.add(popularHotelModel.fromJson(data.data()));
        print(data);
      }

      update();
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
    loadUser();
    fetchPromotionalSlider();
    loadPopularHotel();
  }
}
