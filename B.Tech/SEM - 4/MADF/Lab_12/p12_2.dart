import 'package:flutter/material.dart';

class ScrollableListviewAadGridview extends StatefulWidget {
  const ScrollableListviewAadGridview({super.key});

  @override
  State<ScrollableListviewAadGridview> createState() => _ScrollableListviewAadGridviewState();
}

class _ScrollableListviewAadGridviewState extends State<ScrollableListviewAadGridview> {
  @override
  Widget build(BuildContext context) {
    List<Widget> containers = ListOfContainer();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Container(
                height: 500,
                child: ListView.builder(itemBuilder: (context, index) {
                  return containers[index];
                },itemCount:containers.length ,),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: 500,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemCount: containers.length,
                  itemBuilder: (context, index) {
                    return containers[index];
                  },
                ),
              ),
            )
          ],
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
