import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class StateAndCityDropdown extends StatefulWidget {
  const StateAndCityDropdown({super.key});

  @override
  State<StateAndCityDropdown> createState() => _StateAndCityDropdownState();
}

class _StateAndCityDropdownState extends State<StateAndCityDropdown> {

  Future<Database> initDatabase()async{
    Directory directory = await getApplicationCacheDirectory();
    String path =  join(directory.path,'cureOption.db');

    Database db = await openDatabase(path,onCreate: (db, version) async {
      await db.execute('''
          create table State(
           state_id INTEGER PRIMARY KEY AUTOINCREMENT,
           state_name TEXT NOT NULL
          )''');
      await db.execute('''
          create table City(
           city_id INTEGER PRIMARY KEY AUTOINCREMENT,
           city_name TEXT NOT NULL,
           state_id INTEGER NOT NULL,
           FOREIGN KEY (state_id) REFERENCES State(state_id)
          )
        ''');
    }, onUpgrade: (db, oldVersion, newVersion) {
    }, version: 1);
    print("Database is initialized");
    return db;
  }

  Future<List<String>> selectAllState() async{
    Database db = await initDatabase();
    // List<Map<String,dynamic>> states = await db.query("State");
    List<Map<String,dynamic>> statesMap = await db.rawQuery("select * from State");
    List<String> states = statesMap.map((e) => e["state_name"].toString(),).toList();

    return selectAllState();
  }

  String dropdownValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FutureBuilder(
            future: selectAllState(),
            builder:(context, snapshot) => DropdownButton(
              value: dropdownValue,
              items: snapshot.data!.map((e) => DropdownMenuItem(child: Text(e)),).toList(),
              onChanged: (value) { setState(() { dropdownValue = value!; }); }
            )
          )
        ]
      )
    );
  }
}
