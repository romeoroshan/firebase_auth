// ignore_for_file: unnecessary_overrides

import 'package:firebase/app/modules/userapp/views/userapp_view.dart';
import 'package:firebase/app/modules/welcome/views/welcome_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;
  var emailCon1 = TextEditingController();
  var passCon1 = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    _user =
        Rx<User?>(auth.currentUser); // Initialize Rx<User?> with currentUser
    auth.authStateChanges().listen((user) {
    });
    ever(_user, _initailScreen); // Set up reaction to user changes
  }

  _initailScreen(User? user) {
    if (user == null) {
      Get.offAll(UserappView());
    } else {
      Get.offAll(WelcomeView());
    }
  }

  void register(String email, String password) async {
    print("function called");
    print(email);
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Get.offAll(WelcomeView());
    } catch (e) {
      Get.snackbar("User", "message",
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
          titleText: const Text(
            "Account creation failed",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            e.toString(),
            style: const TextStyle(color: Colors.white),
          ));
    }
  }


  void logout() async {
    await auth.signOut();
    Get.offAll(UserappView());
  }
}
