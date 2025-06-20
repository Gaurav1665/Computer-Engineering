import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CustomGetXBottomSheet extends StatelessWidget {
  CustomGetXBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
              child: Text('Show bottomsheet'),
              onPressed: () async{
                await Get.bottomSheet(
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35))
                    ),
                    child: Column(
                      children: [
                        Text('Hii 1'),
                        Text('Hii 2'),
                        Text('Hii 3'),
                        Text('Hii 4'),
                      ],
                    ),
                  ),
                  isDismissible: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                );
              },
            ),
      ),
    );
  }
}
