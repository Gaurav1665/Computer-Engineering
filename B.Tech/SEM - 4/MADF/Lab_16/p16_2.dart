import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class InsertInTableScreen extends StatefulWidget {
  int? todoId;
  InsertInTableScreen({super.key, this.todoId});

  @override
  State<InsertInTableScreen> createState() => _InsertInTableScreenState();
}

class _InsertInTableScreenState extends State<InsertInTableScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController? title;
  TextEditingController? description;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    title = TextEditingController();
    description = TextEditingController();
    if(widget.todoId != null){
      _loadData();
    }
  }

  void _loadData() async{
    Map<String, dynamic> todo = await fetchById(widget.todoId!);
    setState(() {
      title = TextEditingController(text: todo["Todo_title"]);
      description = TextEditingController(text: todo["Todo_description"]);
    });
  }

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

  Future<void> insertTodo({required String title, required String description}) async{
    Database db = await initDatabase();
    int id =  await db.insert("Todo", {"Todo_title" : title, "Todo_description" : description, "Todo_isDone" : false, "User_id" : 0});
    print("id $id");
  }

  Future<void> updateTodo({required String title, required String description}) async{
    Database db = await initDatabase();
    await db.update(
      'Todo ',
      {
        "Todo_title" : title,
        "Todo_description" : description
      },where: 'Todo_id = ?', whereArgs: [widget.todoId]
      )
    ;
  }

  Future<Map<String, dynamic>> fetchById(int todoId) async {
      Database db = await initDatabase();
      List<Map<String, dynamic>> todoMaps = await db.query('Todo', where: 'Todo_id = ?', whereArgs: [todoId]);
      return todoMaps.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: title,
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    hintText: "Title",
                    label: Text("Title")
                ),
                validator: (value) {
                  if(value!.isEmpty){
                    return "Please Enter Title of Task";
                  }
                },
              ),
              const SizedBox(height: 20,),
              TextFormField(
                  controller: description,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      hintText: "Description",
                      label: Text("Description")
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "Please Enter Title of Task";
                    }
                  }
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                child: Text(widget.todoId==null ? "Add Task" : "Update Task"),
                onPressed: () {
                  if(_formkey.currentState!.validate()){
                    widget.todoId==null
                      ? insertTodo(title: title!.text, description: description!.text)
                      : updateTodo(title: title!.text, description: description!.text);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
