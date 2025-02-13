import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gaurav/Lab_16/p16_2.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class ListToEdit extends StatefulWidget {
  const ListToEdit({super.key});

  @override
  State<ListToEdit> createState() => _ListToEditState();
}

class _ListToEditState extends State<ListToEdit> {

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

  Future<List<Map<String, dynamic>>> fetchData()async{
    Database db = await initDatabase();
    List<Map<String, dynamic>> data = await db.rawQuery("SELECT * FROM User");
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          if(snapshot.hasData && snapshot.data != null){
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon( snapshot.data![index]["Todo_isDone"] ? Icons.check_box : Icons.check_box_outline_blank),
                  title: snapshot.data![index]["Todo_title"],
                  subtitle: snapshot.data![index]["Todo_description"],
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => InsertInTableScreen(todoId: snapshot.data![index]["Todo_id"],),)),
                );
              },
            );
          }
          else{
            return Center(child: CircularProgressIndicator(),);
          }
        },
      ),
    );
  }
}
