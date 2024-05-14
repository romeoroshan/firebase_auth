// ignore_for_file: must_be_immutable

import 'package:firebase/app/modules/register/controllers/register_controller.dart';
import 'package:firebase/app/modules/register/views/register_view.dart';
import 'package:firebase/app/modules/userapp/controllers/userapp_controller.dart';
import 'package:firebase/app/modules/userapp/views/userapp_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BottomformView extends GetView {
  bool toLogin;
  UserappController con = UserappController();
  BottomformView({Key? key, required this.toLogin}) : super(key: key);
  RegisterController con1 = RegisterController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .3,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .07,
              child: TextField(
                controller: toLogin ? con1.emailCon1 : con.emailCon,
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 200, 199, 199)),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(width: 0, color: Colors.red),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .07,
              child: TextField(
                controller: toLogin ? con1.passCon1 : con.passCon,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 200, 199, 199)),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(width: 0, color: Colors.red),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have account? "),
                GestureDetector(
                  onTap: () {
                    if (toLogin == true) {
                      Get.to(UserappView());
                    } else {
                      Get.to(RegisterView());
                    }
                  },
                  child: const Text(
                    "Click here",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
