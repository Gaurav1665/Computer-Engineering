import 'package:flutter/material.dart';

class PrintValueOnScreen extends StatefulWidget {
  PrintValueOnScreen({super.key});

  @override
  State<PrintValueOnScreen> createState() => _PrintValueOnScreenState();
}

class _PrintValueOnScreenState extends State<PrintValueOnScreen> {
  TextEditingController content = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
            child: Column(
              children: [
                TextFormField(
                  controller: content,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: const Text("Print")
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(content.text.toString())
              ],
            )),
      ),
    );
  }
}
