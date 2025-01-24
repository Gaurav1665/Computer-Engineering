import 'package:flutter/material.dart';

class MaterialPageRouteNavigation extends StatefulWidget {
  const MaterialPageRouteNavigation({super.key});

  @override
  State<MaterialPageRouteNavigation> createState() => _MaterialPageRouteNavigationState();
}

class _MaterialPageRouteNavigationState extends State<MaterialPageRouteNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: ElevatedButton(
          child: const Text("go to Next Page"),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Page2(),))
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: ElevatedButton(
            child: const Text("go to Previous Page"),
            onPressed: () => Navigator.pop(context)
        ),
      ),
    );
  }
}

