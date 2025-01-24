import 'package:flutter/material.dart';

class NamedRoute extends StatefulWidget {
  const NamedRoute({super.key});

  @override
  State<NamedRoute> createState() => _NamedRouteState();
}

class _NamedRouteState extends State<NamedRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("This is named Route Demo"),backgroundColor: Colors.blueAccent,),
      body:Column(
        children: [
          Center(
            child: TextButton(onPressed: () {
              Navigator.of(context).pushNamed('/Page2');
            }, child: Text("Go to Next Page")),
          )
        ],
      ),

    );
  }
}

class NamedroutePreavious extends StatefulWidget {
  const NamedroutePreavious({super.key});

  @override
  State<NamedroutePreavious> createState() => _NamedroutePreaviousState();
}

class _NamedroutePreaviousState extends State<NamedroutePreavious> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("This is named Route Demo"),backgroundColor: Colors.blueAccent,),
      body:Column(
        children: [
          Center(
            child: TextButton(onPressed: () {
              Navigator.of(context).pushNamed('/Page1');
            }, child: Text("Go to Previous Page")),
          )
        ],
      ),

    );

  }
}

