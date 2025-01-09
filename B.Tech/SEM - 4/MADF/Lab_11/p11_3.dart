import 'package:flutter/material.dart';

class TextAndImageGridview extends StatelessWidget {
  TextAndImageGridview({super.key});

  List<Map<String, String>> bgImagesWithText = [
    {"img": "assets/extra/img3.png", "text": "Nature - Mountains"},
    {"img": "assets/extra/img3.png", "text": "Abstract Gradient"},
    {"img": "assets/extra/img3.png", "text": "Cityscape - Skyline at night"},
    {"img": "assets/extra/img3.png", "text": "Minimalist - Clean gradient"},
    {"img": "assets/extra/img3.png", "text": "Space - Galaxy"},
    {"img": "assets/extra/img3.png", "text": "Ocean - Waves"},
    {"img": "assets/extra/img3.png", "text": "Forest - Nature"},
    {"img": "assets/extra/img3.png", "text": "Urban - Street"},
    {"img": "assets/extra/img3.png", "text": "Texture - Wooden"},
    {"img": "assets/extra/img3.png", "text": "Sunset - Serene beach"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d3557),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: bgImagesWithText.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(bgImagesWithText[index]["img"]!,)
                  ),
                  const SizedBox(height: 20,),
                  Text(bgImagesWithText[index]["text"]!,textAlign: TextAlign.center,style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
