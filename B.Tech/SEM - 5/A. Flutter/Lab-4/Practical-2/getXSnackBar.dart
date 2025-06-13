import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXSnackBar extends StatelessWidget {
  const GetXSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.snackbar("SnackBar", "This is an example of GetX's defalut SnackBar"),
          child: Text("Show SnackBar")
        ),
      ),
    );
  }
}
