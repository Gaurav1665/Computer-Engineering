import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class GetDBRecords extends StatelessWidget {
  const GetDBRecords({super.key});

  Future<Database> initDatabase()async{
    Directory directory = await getApplicationCacheDirectory();
    String path =  join(directory.path,'cureOption.db');

    Database db = await openDatabase(path,onCreate: (db, version) async {
      await db.execute('''
          create table Todo(
           Todo_id INTEGER PRIMARY KEY AUTOINCREMENT,
           Todo_title TEXT NOT NULL,
           Todo_description TEXT NOT NULL,
           Todo_isDone BOOLEAN NOT NULL,
           FOREIGN KEY (User_id) REFERENCES User(User_id)
          )''');
      await db.execute('''
          create table User(
           User_id INTEGER PRIMARY KEY AUTOINCREMENT,
           User_name TEXT NOT NULL
          )''');
    }, onUpgrade: (db, oldVersion, newVersion) {
    }, version: 1);
    print("Database is initialized");
    return db;
  }

  Future<void> selectAllTodos() async{
    Database db = await initDatabase();
    List<Map<String,dynamic>> todos = await db.rawQuery("select * from Todo");
    print(todos);
  }

  Future<void> joinData() async{
    Database db = await initDatabase();
    List<Map<String,dynamic>> todos = await db.rawQuery("select * from Todo t inner join User u on t.User_id = u.User_id");
    print(todos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Create Table"),
          onPressed: () {
            print(selectAllTodos());
            print(joinData());
          },
        ),
      ),
    );
  }
}
