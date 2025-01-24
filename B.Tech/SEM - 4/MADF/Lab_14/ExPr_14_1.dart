import 'package:flutter/material.dart';

class MaterialRouteSimple extends StatefulWidget {
  const MaterialRouteSimple({super.key});

  @override
  State<MaterialRouteSimple> createState() => _MaterialRouteSimpleState();
}

class _MaterialRouteSimpleState extends State<MaterialRouteSimple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Page Routing"),backgroundColor: Colors.orange ,),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page2(),));
            }, child: Text("Goto Next Page",style: TextStyle(fontSize: 50,color: Colors.red, backgroundColor: Colors.blue),))
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("This is Page 2"),backgroundColor: Colors.blueAccent,),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              Navigator.of(context).pop();
            }, child: Text("Go back to previous Page"))
          ],
        ),
      ),
    );
  }
}

