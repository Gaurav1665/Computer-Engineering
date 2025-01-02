import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CenterTextWidget(str: "This is a Custom Widget",size: 50)
    );
  }
}

Widget CenterTextWidget({required String str,double? size = 30}){
    return Center(
      child:Container(
        child: Text(str,style: TextStyle(fontSize: size))
    )
  );
}

