// ignore_for_file: must_be_immutable

import 'package:firebase/app/modules/userapp/views/register_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/userapp_controller.dart';

class UserappView extends GetView<UserappController> {
  UserappController con = UserappController();

  UserappView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 58, 33, 243),
        onPressed: () {
          con.login(con.emailCon.text, con.passCon.text);
        },
        child: const Icon(Icons.arrow_right,color: Colors.white,),
      ),
      backgroundColor: const Color.fromARGB(255, 58, 33, 243),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight * 3),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(300),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppBar(
                automaticallyImplyLeading: false,
                title: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.style,
                      color: Colors.orange,
                      size: 44,
                    ),
                    Text(
                      'Firebase',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 34,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
            ],
          ),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Welcome back",
                      style: TextStyle(
                          fontSize: 44,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.style,
                      size: 100,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*.3,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*.01,),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.07,
                    child: TextField(
                      controller: con.emailCon,
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 200, 199, 199)),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 0, color: Colors.red),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.07,
                    child: TextField(
                      controller: con.passCon,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 200, 199, 199)),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 0, color: Colors.red),
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
                          Get.to(RegisterView());
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
