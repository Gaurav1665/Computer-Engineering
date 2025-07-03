import 'dart:core';

class StudentModel{
  int? id;
  String name;
  String city;
  int rollNo;
  int enrollNo;
  int sem;


  StudentModel({
    this.id,
    required this.name,
    required this.city,
    required this.rollNo,
    required this.enrollNo,
    required this.sem,
  });

  static StudentModel toStudentModel({required Map<String, dynamic> student}){
    return StudentModel(
      id: student["id"], 
      name: student["name"], 
      city: student["city"], 
      rollNo: student["rollNo"],
      enrollNo: student["enrollNo"],
      sem: student["sem"]
    );
  }

  static Map<String, dynamic> toMap({required StudentModel student}){
    return {
      "id" : student.id,
      "name" : student.name,
      "city" : student.city,
      "rollNo" : student.rollNo,
      "enrollNo" : student.enrollNo, 
      "sem" : student.sem
    };
  } 
}