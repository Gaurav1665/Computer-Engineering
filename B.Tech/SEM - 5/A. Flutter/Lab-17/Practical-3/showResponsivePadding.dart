import 'package:flutter/material.dart';

class ShowResponsivePadding extends StatelessWidget {
  const ShowResponsivePadding({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,), 
        itemCount: 9,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: width*0.05, vertical: height*0.05), 
            child: Container(height: height*0.3, width: width*0.3, color: Colors.redAccent,)
          );
        },
      )
    );
  }
}