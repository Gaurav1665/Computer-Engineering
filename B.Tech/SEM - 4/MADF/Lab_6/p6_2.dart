import 'package:flutter/material.dart';

class VerticalScreenParts extends StatelessWidget{
  const VerticalScreenParts({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Expanded(child: Container(color: Colors.red,)),
            Expanded(child: Container(color: Colors.green,)),
            Expanded(child: Container(color: Colors.yellow,)),
          ],
        ),
      ),
    );
  }
}