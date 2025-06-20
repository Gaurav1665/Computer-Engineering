import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetNavigationSecondPage extends StatelessWidget {
  String? text;
  GetNavigationSecondPage({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page"),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text!),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: ()=>Get.back(), 
              child: Text("Previous page")
            )
          ],
        ),
      )
    );
  }
}