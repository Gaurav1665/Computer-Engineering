import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RxTimer extends StatelessWidget {
  RxTimer({super.key});
  RxInt timer = 10.obs;

  void counter(){
    Timer(Duration(seconds: 1), (){
      if(timer.value != 0){
        timer.value -= 1;
        counter();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    counter();
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(timer.string,style: TextStyle(fontSize: 42),),),
          ],
        ),
      ),
    );
  }
}