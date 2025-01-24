import 'package:flutter/material.dart';

class NameRouteNavigation extends StatefulWidget {
  const NameRouteNavigation({super.key});

  @override
  State<NameRouteNavigation> createState() => _NameRouteNavigationState();
}

class _NameRouteNavigationState extends State<NameRouteNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: ElevatedButton(
            child: const Text("go to Next Page"),
            onPressed: () => Navigator.pushNamed(context, '/page2')
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

