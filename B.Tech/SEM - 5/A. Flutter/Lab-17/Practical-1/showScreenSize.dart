import 'package:flutter/material.dart';

class ShowScreenSize extends StatelessWidget {
  const ShowScreenSize({super.key});

  @override
  Widget build(BuildContext context) {
    Size  size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Text("${size.height} x ${size.width}"),
      ),
    );
  }
}