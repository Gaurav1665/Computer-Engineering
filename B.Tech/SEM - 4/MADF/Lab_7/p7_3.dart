import 'package:flutter/material.dart';

class PrintValueFromTextField extends StatelessWidget {
  PrintValueFromTextField({super.key});

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
            child: Column(
              children: [
                TextFormField(controller: name,),
                SizedBox(height: 30,),
                ElevatedButton(
                    onPressed: (){
                      print("Content of TextFormField : ${name.text.toString()}");
                    },
                    child: Text("Print")
                )
              ],
            )
        ),
      ),
    );
  }
}
