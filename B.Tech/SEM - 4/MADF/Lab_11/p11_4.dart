import 'package:flutter/material.dart';

class ChangingView extends StatefulWidget {
  const ChangingView({super.key});

  @override
  State<ChangingView> createState() => _ChangingViewState();
}

class _ChangingViewState extends State<ChangingView> {
  bool isGrid = false;

  List<String> user = ["User","User","User","User","User","User","User","User","User","User","User","User","User","User","User","User","User","User","User","User","User","User","User","User","User","User","User","User","User","User","User","User","User","User","User","User",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(isGrid?Icons.grid_3x3_rounded:Icons.list),
          onPressed: (){
            setState(() { isGrid = !isGrid; print(isGrid);});
          },
        ),
      ),
      body: isGrid ?
      GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 2),
        itemCount: user.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Icon(Icons.person_rounded,size: 50,),
                  const SizedBox(width: 20,),
                  Text("${user[index]} ${index+1}",textAlign: TextAlign.center,style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          );
        },
      ):
      ListView.builder(
        itemCount: user.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.person_rounded,size: 50,),
                  const SizedBox(height: 20,),
                  Text("${user[index]} ${index+1}",textAlign: TextAlign.center,style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          );
        },
      )
    );
  }
}
