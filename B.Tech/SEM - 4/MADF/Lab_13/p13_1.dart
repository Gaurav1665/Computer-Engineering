import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  const BottomSheetDemo({super.key});

  @override
  State<BottomSheetDemo> createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async{
            await showModalBottomSheet(
              context: context,
              builder: (context) {
                return const Center(
                  child: Text("This is a BottomSheet"),
                );
              },
            );
          }, child: const Text("SHow Bottom Sheet")
        )
      ),
    );
  }
}
