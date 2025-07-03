import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practicals/Lab-9/Practical-1%20&%202%20&%203/studentAdd.dart';
import 'package:practicals/Lab-9/Practical-1%20&%202%20&%203/studentController.dart';

class StudentView extends StatelessWidget {
  StudentView({super.key});
  StudentController sc = new StudentController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student list"),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(StudentAdd());
            }, 
            icon: Icon(Icons.add)
          )
        ],
      ),
      body:FutureBuilder(
        future: sc.fetchStudents(), 
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator(color: Color(0xff003366),));
          }
          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600), textAlign: TextAlign.center,),);
          }
          if (sc.studentList == null || sc.studentList.isEmpty) {
            return Center(child: Text("No User Found", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600), textAlign: TextAlign.center,),);
          }
          return Obx(() {
            return ListView.builder(
              itemCount: sc.studentList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(sc.studentList[index].name),
                  subtitle: Text("${sc.studentList[index].rollNo} | ${sc.studentList[index].enrollNo}"),
                  onTap: () => Get.to(StudentAdd(id: sc.studentList[index].id,)),
                );
              },
            );
          },);
        },
      )
    );
  }
}