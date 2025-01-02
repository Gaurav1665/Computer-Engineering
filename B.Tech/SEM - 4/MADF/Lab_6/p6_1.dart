import 'package:flutter/material.dart';

class HorizontalScreenParts extends StatelessWidget{
  const HorizontalScreenParts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
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