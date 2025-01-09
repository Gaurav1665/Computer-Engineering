import 'package:flutter/material.dart';

class ImageGridview extends StatelessWidget {
  ImageGridview({super.key});

  List<String> img = [
    'assets/extra/img1.jpg',
    'assets/extra/img2.jpg',
    'assets/extra/img3.png',
    'assets/extra/img1.jpg',
    'assets/extra/img2.jpg',
    'assets/extra/img3.png',
    'assets/extra/img1.jpg',
    'assets/extra/img2.jpg',
    'assets/extra/img3.png',
    'assets/extra/img1.jpg',
    'assets/extra/img2.jpg',
    'assets/extra/img3.png',
    'assets/extra/img1.jpg',
    'assets/extra/img2.jpg',
    'assets/extra/img3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, index) {
          return Card(
            semanticContainer: true,
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(img[index],height: 300,width: 300,),
            ));
        },
        itemCount: img.length,
      ),
    );
  }
}
