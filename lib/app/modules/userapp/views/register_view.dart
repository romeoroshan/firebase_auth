// ignore_for_file: must_be_immutable

import 'package:firebase/app/modules/userapp/controllers/userapp_controller.dart';
import 'package:firebase/app/modules/userapp/views/userapp_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class RegisterView extends GetView {
  UserappController con=UserappController();
  RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        centerTitle: true,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.app_registration,
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
              con.register(con.emailCon.text, con.passCon.text);
            }, child: const Text("Login")),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have account? "),
                GestureDetector(
                  onTap: (){
                    Get.to(UserappView());
                  },
                  child: const Text("Click here",style: TextStyle(color: Colors.blue),),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
