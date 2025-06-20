import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class RxHidenContent extends StatelessWidget {
  RxHidenContent({super.key});
  RxBool isHiden = true.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => isHiden.value = !isHiden.value,
              child: Obx(()=>Text(isHiden.value ? "Show Content" : "Hide Content"))
            ),
            SizedBox(height: 20,),
            Obx(() => isHiden.value ? Text("") : Text("This is a Hiden Content"),)
            
          ],
        ),
      ),
    );
  }
}