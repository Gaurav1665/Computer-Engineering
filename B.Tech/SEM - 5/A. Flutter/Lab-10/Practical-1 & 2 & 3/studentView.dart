import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practicals/Lab-10/Practical-1%20&%202%20&%203/studentAdd.dart';
import 'package:practicals/Lab-10/Practical-1%20&%202%20&%203/studentController.dart';

class StudentView extends StatefulWidget {
  const StudentView({super.key});

  @override
  State<StudentView> createState() => StudentViewState();
}

class StudentViewState extends State<StudentView> {

  TextEditingController search = new TextEditingController();
  StudentController sc = Get.put(StudentController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sc.fetchStudents();
  }

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
      body:Column(
        children: [
          TextField(
            controller: search,
            onChanged: (value) => sc.searchStudent(searchedString: value),
          ),
          SizedBox(height: 20,),
          Container(
            height: MediaQuery.of(context).size.height*0.8,
            child: Obx(() {
              return ListView.builder(
                itemCount: sc.studentList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(sc.studentList[index].name),
                    subtitle: Text("${sc.studentList[index].rollNo} | ${sc.studentList[index].enrollNo}"),
                    onTap: () => Get.to(StudentAdd(id: sc.studentList[index].id,)),
                    trailing: IconButton(onPressed: () => sc.deleteStudent(id: sc.studentList[index].id!), icon: Icon(Icons.delete)),
                  );
                },
              );
            }),
          )
        ],
      )
    );
  }
}