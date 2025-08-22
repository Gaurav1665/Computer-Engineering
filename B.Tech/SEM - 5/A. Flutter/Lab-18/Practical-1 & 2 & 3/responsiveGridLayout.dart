import 'package:flutter/material.dart';

class ResponsiveGridLayout extends StatefulWidget {
  const ResponsiveGridLayout({super.key});

  @override
  State<ResponsiveGridLayout> createState() => _ResponsiveGridLayoutState();
}

class _ResponsiveGridLayoutState extends State<ResponsiveGridLayout> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double basefontSize = 20.0;
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    double fontSize = basefontSize * textScaleFactor;
    return Scaffold(
      body: width >= 700
      ? Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: height*0.025, horizontal: width*0.05),
            child: Container(
              height: height*0.15, 
              width: width*0.9, 
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(color: Colors.green)
              ),
              child: Center(child: Text("Header", style: TextStyle(color: Colors.white, fontSize: fontSize, fontWeight: FontWeight.bold),),)
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: height*0.025, horizontal: width*0.05),
                child: Container(
                  height: height*0.55, 
                  width: width*0.3, 
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    border: Border.all(color: Colors.red)
                  ),
                  child: Center(child: Text("Sidebar", style: TextStyle(color: Colors.white, fontSize: fontSize, fontWeight: FontWeight.bold),),)
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height*0.025, horizontal: width*0.05),
                child: Container(
                  height: height*0.55, 
                  width: width*0.5, 
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    border: Border.all(color: Colors.yellow)
                  ),
                  child: Center(child: Text("Content", style: TextStyle(color: Colors.white, fontSize: fontSize, fontWeight: FontWeight.bold),),)
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: height*0.025, horizontal: width*0.05),
            child: Container(
              height: height*0.15, 
              width: width*0.9, 
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.all(color: Colors.blue)
              ),
              child: Center(child: Text("Footer", style: TextStyle(color: Colors.white, fontSize: fontSize, fontWeight: FontWeight.bold),),)
            ),
          ),
        ],
      )
      : Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: height*0.025, horizontal: width*0.05),
            child: Container(
              height: height*0.1, 
              width: width*0.9, 
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(color: Colors.green)
              ),
            child: Center(child: Text("Header", style: TextStyle(color: Colors.white, fontSize: fontSize, fontWeight: FontWeight.bold),),))
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: height*0.025, horizontal: width*0.05),
            child: Container(
              height: height*0.5, 
              width: width*0.9, 
              decoration: BoxDecoration(
                color: Colors.yellowAccent,
                border: Border.all(color: Colors.yellow)
              ),
              child: Center(child: Text("Content", style: TextStyle(color: Colors.white, fontSize: fontSize, fontWeight: FontWeight.bold),),)
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: height*0.025, horizontal: width*0.05),
            child: Container(
              height: height*0.1, 
              width: width*0.9, 
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.all(color: Colors.blue)
              ),
              child: Center(child: Text("Footer", style: TextStyle(color: Colors.white, fontSize: fontSize, fontWeight: FontWeight.bold),),)
            ),
          ),
        ],
      ),
      bottomNavigationBar: width<700 
      ? Container(
        height: height*0.15,
        width: width*0.9,
        decoration: BoxDecoration(
          color: Colors.redAccent,
          border: Border.all(color: Colors.redAccent),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.redAccent,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          selectedFontSize: fontSize*0.5,
          selectedIconTheme: IconThemeData(size: fontSize),
          
          unselectedFontSize: fontSize*0.5,
          unselectedIconTheme: IconThemeData(size: fontSize),
          onTap: _onItemTapped,
        ),
      )
      : null,
    );
  }
}