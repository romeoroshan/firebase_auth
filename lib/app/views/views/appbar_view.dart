import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AppbarView extends GetView {
  const AppbarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
