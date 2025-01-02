import 'package:flutter/material.dart';

class TextOverImage extends StatelessWidget {
  const TextOverImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("../assets/img.jpg", height: 500, width: 500, fit: BoxFit.cover,),
            const Center(child: Text("Text Over Image", style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),)),
          ],
        )
      ),
    );
  }
}
