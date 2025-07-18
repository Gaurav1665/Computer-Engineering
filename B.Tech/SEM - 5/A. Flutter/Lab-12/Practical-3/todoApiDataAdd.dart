import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practicals/Lab-12/Practical-3/todoApiDataController.dart';
import 'package:practicals/Lab-12/Practical-3/todoApiModel.dart';

class TodoApiDataAdd extends StatefulWidget {
  int? id;
  TodoApiDataAdd({super.key, this.id});

  @override
  State<TodoApiDataAdd> createState() => _TodoApiDataAddState();
}

class _TodoApiDataAddState extends State<TodoApiDataAdd> {
  TodoApiDataController tadc = Get.put(TodoApiDataController()); 
  TextEditingController? title;
  TextEditingController? description;
  RxBool? isCompleted = false.obs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.id != null){
      TodoApiDataModel data = tadc.data.firstWhere((element) => element.id == widget.id,);
      title = TextEditingController(text: data.title);
      description = TextEditingController(text: data.description);
      isCompleted!.value = data.isCompleted;
    } else{
      title = TextEditingController();
      description = TextEditingController();
      isCompleted!.value = false;
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
            TextFormField(controller: title,decoration: InputDecoration(label: Text("title")),),
            SizedBox(height: 20,),
            TextFormField(controller: description,decoration: InputDecoration(label: Text("description")),),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Completed"),
                  Obx(() => Checkbox(value: isCompleted!.value, onChanged: (value) => isCompleted!.value = value!,))
                ],
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                widget.id==null 
                ? tadc.addData(
                  data: TodoApiDataModel(
                    title: title!.text, 
                    description: description!.text, 
                    isCompleted: isCompleted!.value,
                  )
                )
                : tadc.updateData(
                  data: TodoApiDataModel(
                    title: title!.text, 
                    description: description!.text, 
                    isCompleted: isCompleted!.value,
                    id: widget.id
                  )
                );
                Get.back();
              }, 
              child: Text(widget.id==null?"Add User":"Edit User")
            )
          ],
        ),
      )
    );
  }
}