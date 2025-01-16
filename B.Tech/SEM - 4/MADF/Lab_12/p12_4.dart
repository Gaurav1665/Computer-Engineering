import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PrintPickedDate extends StatefulWidget {
  const PrintPickedDate({super.key});

  @override
  State<PrintPickedDate> createState() => _PrintPickedDateState();
}

class _PrintPickedDateState extends State<PrintPickedDate> {
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: selectedDate ?? now,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(3000)
                );
                setState(() {
                  selectedDate = picked;
                });
              },
              child: Text("Pick A date")
            ),
            const SizedBox(height: 50,),
            Text(selectedDate.toString()??"")
          ],
        ),
      ),
    );
  }
}
