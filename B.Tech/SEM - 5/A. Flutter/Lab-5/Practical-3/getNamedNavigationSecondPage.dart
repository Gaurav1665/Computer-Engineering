import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetNamedNavigationSecondPage extends StatelessWidget {
  const GetNamedNavigationSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page"),),
      body: Center(
        child: ElevatedButton(
            onPressed: ()=>Get.offAllNamed("/"), 
            child: Text("Previous page")
          ),
      )
    );
  }
}