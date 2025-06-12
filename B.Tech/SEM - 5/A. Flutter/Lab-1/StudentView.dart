import 'dart:io';
import 'package:gaurav/Lab-1/StudentController.dart';

void main(){
  stdout.write("Enter Student Details :");
  stdout.write("Name : ");
  String name = stdin.readLineSync()!;
  stdout.write("RollNo : ");
  int rollNo = int.parse(stdin.readLineSync()!);
  stdout.write("EnrollNo : ");
  int enrollNo = int.parse(stdin.readLineSync()!);

  SetStudentDetailController ssdc = new SetStudentDetailController();
  ssdc.setStudentdetail(name, rollNo, enrollNo);

  stdout.write("Entered Student detail :");
  GetStudentDetailController gsdc = new GetStudentDetailController();
  gsdc.getStudentDetail();
}