import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class RxVariables extends StatelessWidget {
  RxVariables({super.key});
  RxString text = "".obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(text.string)),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder()
              ),
              onChanged: (value) {
                text.value = value;
              },
            ),
            
          ],
        )
      ),
    );
  }
}