import 'package:flutter/material.dart';

class TabViewDemo extends StatelessWidget {
  const TabViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.first_page_rounded),
              child: Center(child: Text("First"),),
            ),
            Tab(
              icon: Icon(Icons.last_page_rounded),
              child: Center(child: Text("Second"),),
            ),
          ]),
        ),
        body: TabBarView(children: [Page1(), Page2()]),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("This is a Page 1"),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("This is a Page 2"),
      ),
    );
  }
}
