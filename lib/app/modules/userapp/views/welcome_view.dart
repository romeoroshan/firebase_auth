// ignore_for_file: must_be_immutable

import 'package:firebase/app/modules/userapp/controllers/userapp_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class WelcomeView extends GetView {
  UserappController con=UserappController();
  WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    User? user=FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar: AppBar(
        title: const Text('WelcomeView'),
        centerTitle: true,
      ),
      body:  Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            if (user != null)
              Text(
                'Email: ${user.email}',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              con.logout();
            }, child: const Text("Log-out"))
          ],
        ),
      ),
    );
  }
}
