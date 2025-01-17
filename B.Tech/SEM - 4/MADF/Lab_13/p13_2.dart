import 'package:flutter/material.dart';

class NavigationDrawerDemo extends StatefulWidget {
  const NavigationDrawerDemo({super.key});

  @override
  State<NavigationDrawerDemo> createState() => _NavigationDrawerDemoState();
}

class _NavigationDrawerDemoState extends State<NavigationDrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 1,),
      body: const Center(
        child: Text("This is a Demo for Drawer",style: TextStyle(fontSize: 30),),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(child: Text("Drawer Header",style: TextStyle(fontSize: 30),)),
            ListTile(
              title: const Text("Page - 1"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page1(),));
              },
            ),
            ListTile(
              title: const Text("Page - 2"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page2(),));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("This is a Page 1"),
              const SizedBox(height: 50,),
              ElevatedButton(onPressed: () {
                Navigator.of(context).pop();
              }, child: const Text("Go back to previous Page"))
            ],
          )
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is a Page 2"),
            const SizedBox(height: 50,),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pop();
            }, child: const Text("Go back to previous Page"))
          ],
        ),
      ),
    );
  }
}
