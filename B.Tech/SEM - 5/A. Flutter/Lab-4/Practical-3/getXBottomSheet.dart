import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXBottomSheet extends StatelessWidget {
  GetXBottomSheet({super.key});

  List<String> user = ["qwe","rty","uio","asd","fgh","jkl","zxc","vbn","mp"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.bottomSheet(
            Container(
              color: Colors.white,
              child: ListView.builder(
                itemCount: user.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(user[index]),
                ),
              ),
            )
          ),
          child: Text("Show BottomSheet")
        ),
      ),
    );
  }
}
