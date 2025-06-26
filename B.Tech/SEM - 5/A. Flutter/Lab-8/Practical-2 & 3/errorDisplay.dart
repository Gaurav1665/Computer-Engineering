import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ErrorDisplay extends StatelessWidget {
  const ErrorDisplay({super.key});

  void generateFormatException({required bool isSnackBar}){
    try {
      throw FormatException("FormateException is generated");
    } on FormatException catch (error) {
      isSnackBar ? Get.showSnackbar(
        GetSnackBar(
          message: error.toString(),
          duration: Duration(seconds: 2),
        )
      ) :
      Get.defaultDialog(
        confirm: ElevatedButton(onPressed: () => Get.back(), child: Text("OK")),
        middleText: error.toString()
      );
    }
  }

  void generateSocketException({required bool isSnackBar}){
    try {
      throw SocketException("FormateException is generated");
    } on SocketException catch (error) {
      isSnackBar ? Get.showSnackbar(
        GetSnackBar(
          message: error.toString(),
          duration: Duration(seconds: 2),
        )
      ) :
      Get.defaultDialog(
        confirm: ElevatedButton(onPressed: () => Get.back(), child: Text("OK")),
        middleText: error.toString()
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => generateFormatException(isSnackBar: true), 
              child: Text("Generate FormateException SnackBar")
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () => generateSocketException(isSnackBar: false), 
              child: Text("Generate SocketException Dialog")
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () => generateFormatException(isSnackBar: false), 
              child: Text("Generate FormateException Dialog")
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () => generateSocketException(isSnackBar: true), 
              child: Text("Generate SocketException SnackBar")
            )
          ],
        ),
      ),
    );
  }
}