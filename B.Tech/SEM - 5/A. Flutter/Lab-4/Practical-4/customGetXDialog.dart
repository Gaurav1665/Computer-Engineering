import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustormGetXDialog extends StatelessWidget {
  const CustormGetXDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.dialog(
            Dialog(
              backgroundColor: Colors.white,
              insetAnimationCurve: Curves.elasticInOut,
              insetAnimationDuration: Duration(seconds: 10),
              surfaceTintColor: Colors.blueGrey,
              elevation: 3,
              child: Container(
                height: 100,
                child: Column(
                  children: [
                    const SizedBox(height: 10,),
                    const Text("Custom Dialog"),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(onPressed: () => Get.back(), child: Text("Cancle")),
                        ElevatedButton(onPressed: () => Get.back(), child: Text("Ok"))
                      ],
                    )
                  ],
                ),
              ),
            )
          ),
          child: Text("Show Dialog")
        ),
      ),
    );
  }
}
