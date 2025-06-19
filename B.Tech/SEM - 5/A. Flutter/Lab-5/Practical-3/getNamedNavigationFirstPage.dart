import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practicals/Lab-5/Practical-1%20&%202/getNavigationSecondPage.dart';

class GetNamedNavigationFirstPage extends StatelessWidget {
  const GetNamedNavigationFirstPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Page"),),
      body: Center(
        child: ElevatedButton(
            onPressed: ()=>Get.toNamed("/second"),
            child: Text("Next Page")
          )
      )
    );
  }
}