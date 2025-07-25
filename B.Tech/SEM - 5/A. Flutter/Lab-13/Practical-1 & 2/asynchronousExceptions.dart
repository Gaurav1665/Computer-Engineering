import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AsynchronousCustomExceptions extends StatelessWidget {
  const AsynchronousCustomExceptions({super.key});

  Future<void> fetch()async{
    try {
      await Future.delayed(
        Duration(seconds: 1),
        ()=>throw CustomException(msg: "Can not fetch Data"));
    } catch (e) {
      Get.snackbar("Error", "CustomException: ${e.toString()}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Asynchronous Custom Exceptions"),),
      body: Center(
        child: ElevatedButton(onPressed: () async=> await fetch(), child: Text("Fetch Data")),
      ),
    );
  }
}

class CustomException implements Exception{
  String? msg;
  CustomException({this.msg});
}