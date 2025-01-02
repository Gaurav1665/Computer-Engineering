import 'dart:math';
import 'package:flutter/material.dart';

class RollTheDice extends StatefulWidget {
  const RollTheDice({super.key});

  @override
  State<RollTheDice> createState() => _RollTheDiceState();
}

class _RollTheDiceState extends State<RollTheDice> {
  int i = 1;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Image.asset("../assets/dice/dice$i.png",height: 100,width: 100,),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
              setState(() {
                i = Random().nextInt(6) + 1;
              });
            }, child: Text("Roll the Dice"))
          ],
        ),
      ),
    );
  }
}
