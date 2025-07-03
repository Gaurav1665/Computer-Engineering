import 'package:get/get.dart';
import 'package:practicals/Lab-9/Practical-1 & 2 & 3/StudentModel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class StudentController {
  RxList<StudentModel> studentList = <StudentModel>[].obs;

  Future<Database> initializeStudentData() async{
    return await openDatabase("assets/Student.db",onCreate: (db, version) async{
      await db.execute('''
        CREATE TABLE TBL_Student(
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT NOT NULL,
          city TEXT NOT NULL
          rollNo INTEGER NOT NULL
          sem INTEGER NOT NULL
        )
      ''');
    },);
  }

  Future<void> fetchStudents() async{
    Database db = await initializeStudentData();
    List<Map<String, dynamic>> student = await db.rawQuery("SELECT * FROM TBL_Student");
    studentList.value = student.map((e) => StudentModel.toStudentModel(student: e)).toList();
  }

  Future<void> updateStudent({required int id, required StudentModel student}) async{
    Database db = await initializeStudentData();
    db.update("TBL_Student", StudentModel.toMap(student: student), where: "id = ?", whereArgs: [id]);
  }

  Future<void> addStudent({required StudentModel student}) async{
    Database db = await initializeStudentData();
    db.insert("TBL_Student", StudentModel.toMap(student: student));
  }
}