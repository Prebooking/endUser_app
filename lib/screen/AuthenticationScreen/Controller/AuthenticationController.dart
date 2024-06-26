import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:pre_booking/screen/DashboardScreen/DashboardScreenMain.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationController extends GetxController {
  TextEditingController emailText = TextEditingController();
  TextEditingController passwordText = TextEditingController();
  TextEditingController nameText = TextEditingController();
  bool passVisible = false;
  bool loading = false;

  CreateAccount() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    loading = true;
    update();
    try {
      UserCredential cred = await auth.createUserWithEmailAndPassword(
          email: emailText.text, password: passwordText.text);

      await cred.user!.updateDisplayName(nameText.text);
      Fluttertoast.showToast(msg: "Account Created Successfully");
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setString("PASSWORD", passwordText.text);
      pref.setString("EMAIL", emailText.text);
      pref.setString("NAME", nameText.text);
      pref.setString("LOGIN", "IN");
      Get.offAll(() => DashboardScreenMain(),
          transition: Transition.rightToLeft);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Fluttertoast.showToast(msg: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(
            msg: 'The account already exists for that email.');
      }
    }
    loading = false;
    update();
  }

  LoginAccount() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    loading = true;
    update();
    try {
      UserCredential cred = await auth.signInWithEmailAndPassword(
          email: emailText.text, password: passwordText.text);

      Fluttertoast.showToast(msg: "Logined Successfully ");
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setString("PASSWORD", passwordText.text);
      pref.setString("EMAIL", emailText.text);
      pref.setString("NAME", cred!.user!.displayName ?? "");
      pref.setString("LOGIN", "IN");
      Get.offAll(() => DashboardScreenMain(),
          transition: Transition.rightToLeft);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Fluttertoast.showToast(msg: 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        Fluttertoast.showToast(msg: 'Wrong password provided for that user.');
      } else {
        Fluttertoast.showToast(msg: 'No user found for that email.');
      }
    }
    loading = false;
    update();
  }
}
