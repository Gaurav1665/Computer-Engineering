import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("hello world",style: TextStyle(fontSize: 100,color: Colors.red),),
        ),
      ),
    );
  }
}