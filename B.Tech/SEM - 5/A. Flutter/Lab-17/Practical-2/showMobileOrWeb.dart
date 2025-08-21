import 'package:flutter/material.dart';

class ShowMobileOrWeb extends StatelessWidget {
  const ShowMobileOrWeb({super.key});

  @override
  Widget build(BuildContext context) {
    Size  size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Text(size.width < 700 ? "Mobile" : "Web", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
      ),
      backgroundColor: size.width < 700 ? Colors.greenAccent : Colors.blueAccent,
    );
  }
}