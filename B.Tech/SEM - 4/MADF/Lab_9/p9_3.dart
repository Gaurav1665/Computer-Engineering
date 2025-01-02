import 'package:flutter/material.dart';

class ActionBarAndDialog extends StatefulWidget {
  const ActionBarAndDialog({super.key});

  @override
  State<ActionBarAndDialog> createState() => _ActionBarAndDialogState();
}

class _ActionBarAndDialogState extends State<ActionBarAndDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Close"),
                      content: const Text("Are you sure You want to quit?"),
                      actions: [
                        ElevatedButton(
                            onPressed: () {}, child: const Text("Ok")),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Cancel"))
                      ],
                    );
                  },
                );
              },
              icon: Icon(Icons.close_rounded))
        ],
      ),
    );
  }
}
