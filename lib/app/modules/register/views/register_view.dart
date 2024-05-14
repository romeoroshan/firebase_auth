// ignore_for_file: must_be_immutable

import 'package:firebase/app/modules/register/controllers/register_controller.dart';
import 'package:firebase/app/modules/userapp/views/userapp_view.dart';
import 'package:firebase/app/views/views/appbar_view.dart';
import 'package:firebase/app/views/views/centerwidget_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class RegisterView extends GetView {
  RegisterController con = RegisterController();
  RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 58, 33, 243),
        onPressed: () {
          con.register(con.emailCon1.text, con.passCon1.text);
        },
        child: const Icon(
          Icons.person_add,
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 58, 33, 243),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight * 3),
        child: AppbarView()
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: CenterwidgetView(title:"Register Here")
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
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
                controller: con.emailCon1,
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
                controller: con.passCon1,
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
                    Get.to(UserappView());
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
    ),
        ],
      )),
    );
  }
}
