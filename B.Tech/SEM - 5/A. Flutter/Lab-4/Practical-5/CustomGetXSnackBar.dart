import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomGetXSnackBar extends StatelessWidget {
  const CustomGetXSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.snackbar(
            "SnackBar", 
            "This is an example of GetX's defalut SnackBar",
            backgroundGradient: LinearGradient(colors: [Colors.greenAccent,Colors.green]),
            forwardAnimationCurve: Curves.elasticInOut,
          ),
          child: Text("Show SnackBar")
        ),
      ),
    );
  }
}
