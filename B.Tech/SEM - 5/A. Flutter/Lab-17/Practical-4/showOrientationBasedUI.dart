import 'package:flutter/material.dart';

class ShowOrientationBasedUI extends StatelessWidget {
  const ShowOrientationBasedUI({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: OrientationBuilder(
          builder: (context, orientation) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: orientation == Orientation.portrait ? 2 : 3),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: width*0.1, vertical: height*0.1), 
                  child: Container(height: height*0.1, width: width*0.1, color: Colors.redAccent,)
                );
              },
            );
          },
        ),
      )
    );
  }
}