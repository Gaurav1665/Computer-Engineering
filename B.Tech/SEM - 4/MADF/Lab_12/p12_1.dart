import 'package:flutter/material.dart';

class SingleChildScrollWidget extends StatefulWidget {
  const SingleChildScrollWidget({super.key});

  @override
  State<SingleChildScrollWidget> createState() => _SingleChildScrollWidgetState();
}

class _SingleChildScrollWidgetState extends State<SingleChildScrollWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: ListOfContainer(),
        ),
      ),
    );
  }

  List<Widget> ListOfContainer(){
    List<Widget> list = [];
    for(int i=0 ; i < 30 ; i++){
      list.add(Container(
        height: 250,
        color: i%2==0 ? Colors.blue : Colors.red,
      ));
    }
    return list;
  }
}
