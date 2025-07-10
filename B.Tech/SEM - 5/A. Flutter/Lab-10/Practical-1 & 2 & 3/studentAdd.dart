import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practicals/Lab-10/Practical-1%20&%202%20&%203/StudentModel.dart';
import 'package:practicals/Lab-10/Practical-1%20&%202%20&%203/studentController.dart';

class StudentAdd extends StatefulWidget {
  int? id;
  StudentAdd({super.key, this.id});

  @override
  State<StudentAdd> createState() => _StudentAddState();
}

class _StudentAddState extends State<StudentAdd> {
  
  TextEditingController? nameControler;
  TextEditingController? cityController;
  TextEditingController? enrollmentController;
  TextEditingController? rollController;
  int? sem;

  StudentController sc = Get.put(StudentController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.id != null){
      StudentModel student = sc.studentList.firstWhere((element) => element.id == widget.id,);
      nameControler = TextEditingController(text: student.name);
      cityController = TextEditingController(text: student.city);
      enrollmentController = TextEditingController(text: student.enrollNo.toString());
      rollController = TextEditingController(text: student.rollNo.toString());
      sem = student.sem;
    } else{
      nameControler = TextEditingController();
      cityController = TextEditingController();
      enrollmentController = TextEditingController();
      rollController = TextEditingController();
      sem = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add User"),
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(controller: nameControler,decoration: InputDecoration(label: Text("name")),),
            SizedBox(height: 20,),
            TextFormField(controller: cityController,decoration: InputDecoration(label: Text("city")),),
            SizedBox(height: 20,),
            TextFormField(controller: enrollmentController,decoration: InputDecoration(label: Text("enroll no")),),
            SizedBox(height: 20,),
            TextFormField(controller: rollController,decoration: InputDecoration(label: Text("roll no")),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Semester"),
                DropdownButton(
                  items: [1,2,3,4,5,6,7,8].map((e) => DropdownMenuItem(value: e, child: Text(e.toString())),).toList(), 
                  onChanged: (value) => setState(() {
                    sem = value;
                  }),
                )
              ],
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                widget.id==null 
                ? sc.addStudent(
                  student: StudentModel(
                    name: nameControler!.text, 
                    city: cityController!.text, 
                    rollNo: int.parse(rollController!.text) , 
                    enrollNo: int.parse(enrollmentController!.text), 
                    sem: sem!
                  )
                ) 
                : sc.updateStudent(
                  id: widget.id!,
                  student: StudentModel(
                    name: nameControler!.text, 
                    city: cityController!.text, 
                    rollNo: int.parse(rollController!.text), 
                    enrollNo: int.parse(enrollmentController!.text), 
                    sem: sem!
                  )
                );
                Get.back();
              }, 
              child: Text(widget.id==null?"Add Student":"Edit Student")
            )
          ],
        ),
      )
    );
  }
}