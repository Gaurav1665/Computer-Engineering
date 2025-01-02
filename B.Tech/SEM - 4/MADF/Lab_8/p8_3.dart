import 'package:flutter/material.dart';

class BirthdayCard extends StatelessWidget {
  const BirthdayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          "https://st.depositphotos.com/9012638/60962/i/450/depositphotos_609620726-stock-photo-happy-birthday-greeting-card-background.jpg",
          fit: BoxFit.contain,
        ),
        Center(child: Text("Happy Birthday to you",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.blueAccent),))
      ],
    ));
  }
}
