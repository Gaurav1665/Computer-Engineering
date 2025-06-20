import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practicals/Lab-5/Practical-1%20&%202%20&%204/getNavigationSecondPage.dart';

class GetNavigationFirstPage extends StatelessWidget {
  GetNavigationFirstPage({super.key});
  TextEditingController text = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Page"),),
      body: Center(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: text,
            decoration: InputDecoration(
              border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: ()=>Get.to(
              GetNavigationSecondPage(text: text.text,),
              transition: Transition.cupertino,
            ),
            child: Text("Next Page")
          )
        ],
      ),
      )
    );
  }
}