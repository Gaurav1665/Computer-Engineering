import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PrintSystemDate extends StatefulWidget {
  const PrintSystemDate({super.key});

  @override
  State<PrintSystemDate> createState() => _PrintSystemDateState();
}

class _PrintSystemDateState extends State<PrintSystemDate> {
  @override
  Widget build(BuildContext context){

    DateTime now = DateTime.now();
    String f1 = DateFormat("dd/MM/yyyy").format(now);
    String f2 = DateFormat("dd-MM-yyyy").format(now);
    String f3 = DateFormat("dd-MMM-yyyy").format(now);
    String f4 = DateFormat("dd-MM-yy").format(now);
    String f5 = DateFormat("dd MMM yyyy").format(now);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(f1),
            Text(f2),
            Text(f3),
            Text(f4),
            Text(f5),
          ],
        ),
      ),
    );
  }
}
