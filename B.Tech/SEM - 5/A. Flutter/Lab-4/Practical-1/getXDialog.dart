import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXDialog extends StatelessWidget {
  const GetXDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.defaultDialog(
            title: "Dialog",
            middleText: "This is a GetX's default Dialog",
            onCancel: () => Get.back(),
            onConfirm: () => Get.back(),
          ),
          child: Text("Show Dialog")
        ),
      ),
    );
  }
}
