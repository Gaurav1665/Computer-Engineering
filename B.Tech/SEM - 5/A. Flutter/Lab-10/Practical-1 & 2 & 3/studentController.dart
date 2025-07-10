import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practicals/Lab-10/Practical-1 & 2 & 3/StudentModel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

class StudentController {
  RxList<StudentModel> studentList = <StudentModel>[].obs;

  Future<Database> initializeStudentData() async{
    DatabaseFactory databaseFactory = databaseFactoryFfiWeb;
    return await databaseFactory.openDatabase(
      "assets/Student.db",
      options: OpenDatabaseOptions(
        version: 1,
        onCreate: (db, version) async{
          await db.execute('''
            CREATE TABLE TBL_Student(
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              name TEXT NOT NULL,
              city TEXT NOT NULL,
              rollNo INTEGER NOT NULL,
              enrollNo INTEGER NOT NULL,
              sem INTEGER NOT NULL
            )
          ''');
        }
      )
    );
  }

  Future<void> fetchStudents() async{
    Database db = await initializeStudentData();
    List<Map<String, dynamic>> student = await db.rawQuery("SELECT * FROM TBL_Student");
    studentList.value = student.map((e) => StudentModel.toStudentModel(student: e)).toList();
    db.close();
  }

  Future<void> updateStudent({required int id, required StudentModel student}) async{
    Database db = await initializeStudentData();
    db.update("TBL_Student", StudentModel.toMap(student: student), where: "id = ?", whereArgs: [id]);
    await fetchStudents();
    db.close();
  }

  Future<void> addStudent({required StudentModel student}) async{
    Database db = await initializeStudentData();
    db.insert("TBL_Student", StudentModel.toMap(student: student));
    await fetchStudents();
    db.close();
  }

  Future<void> deleteStudent({required int id}) async{
    Database db = await initializeStudentData();
    db.delete("TBL_Student", where: "id = ?", whereArgs: [id]);
    await fetchStudents();
    db.close();
  }

  Future<void> searchStudent({required String searchedString}) async {
    if (searchedString == "") {
      await fetchStudents();
    } else{
      List<StudentModel> searchedStudents = studentList.where((element) => element.name.toLowerCase().contains(searchedString.toLowerCase()),).toList();
      studentList.value = searchedStudents;
    }
  }

}