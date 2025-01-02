import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrintValueFromDecoretedTextField extends StatelessWidget {
  PrintValueFromDecoretedTextField({super.key});

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Decoration of TextFormFiled"),),
      body: Center(
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    hintText: "Enter an Content",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      print("Content of TextFormField : ${name.text.toString()}");
                    },
                    child: const Text("Print")
                )
              ],
            )),
      ),
    );
  }
}
