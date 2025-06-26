import 'package:flutter/material.dart';

class BasicExceptionHandling extends StatelessWidget {
  const BasicExceptionHandling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
            onPressed: () {
              try{
                int a = 10 ~/ 0;
                print(a);
              } catch(e){
                print("Error:${e.toString()}");
              }
            }, 
            child: Text("Generate Exception")
          ),
        )
    );
  }
}