// ignore_for_file: must_be_immutable

import 'package:firebase/app/modules/userapp/views/register_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/userapp_controller.dart';

class UserappView extends GetView<UserappController> {
  UserappController con= UserappController();

  UserappView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserappView'),
        centerTitle: true,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.login,
              size: 100,
            ),
            const SizedBox(
              height: 40,
            ),
            TextField(
              controller: con.emailCon,
              decoration: InputDecoration(
                hintText: "Email",
                hintStyle:
                    const TextStyle(color: Color.fromARGB(255, 200, 199, 199)),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 0, color: Colors.red),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: con.passCon,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle:
                    const TextStyle(color: Color.fromARGB(255, 200, 199, 199)),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 0, color: Colors.red),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              con.login(con.emailCon.text,con.passCon.text);
            }, child: const Text("Login")),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have account? "),
                GestureDetector(
                  onTap: (){
                    Get.to(RegisterView());
                  },
                  child: const Text("Click here",style: TextStyle(color: Colors.blue),),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
