import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CenterwidgetView extends GetView {
  final String title;
  const CenterwidgetView({Key? key,required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 44,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Row(
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
            );
  }
}
