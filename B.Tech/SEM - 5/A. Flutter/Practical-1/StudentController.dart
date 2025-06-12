import 'dart:io';
import 'package:gaurav/Practical-1/StudentModel.dart';

abstract class AbsStudentController{
  static StudentModel? sm;
  void setStudentdetail(String name, int rollNo, int enrollNo){}
  void getStudentDetail(){}
}

class SetStudentDetailController extends AbsStudentController{

  @override
  void setStudentdetail(String name, int rollNo, int enrollNo){
    AbsStudentController.sm = StudentModel(name, rollNo, enrollNo);
  }

}

class GetStudentDetailController extends AbsStudentController{

  @override
  void getStudentDetail(){
    stdout.writeln("Name: ${AbsStudentController.sm!.name}");
    stdout.writeln("RollNo: ${AbsStudentController.sm!.rollNo}");
    stdout.writeln("EnrollNo: ${AbsStudentController.sm!.enrollNo}");
  }

}