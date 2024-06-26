import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:pre_booking/screen/AuthenticationScreen/SignInScreenMain.dart';
import 'package:pre_booking/screen/AuthenticationScreen/SignUpScreenMain.dart';
import 'package:pre_booking/screen/DashboardScreen/DashboardScreenMain.dart';
import 'package:pre_booking/screen/HotelOverViewScreen/Overview.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';

String? login = "";
User? auth;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();

  login = pref.getString("LOGIN");

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  auth = FirebaseAuth.instance.currentUser;
  runApp(PrebookingApp());
}

class PrebookingApp extends StatelessWidget {
  const PrebookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => GetMaterialApp(
        home: (login == "IN" && (auth != null))
            ? DashboardScreenMain()
            : SignInScreenMain(),
      ),
    );
  }
}
