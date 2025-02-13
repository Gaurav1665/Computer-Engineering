import 'package:flutter/material.dart';

class TodoInsertScreen extends StatefulWidget {
  const TodoInsertScreen({super.key});

  @override
  State<TodoInsertScreen> createState() => _TodoInsertScreenState();
}

class _TodoInsertScreenState extends State<TodoInsertScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();

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
                child: Text("Add Task"),
                onPressed: () {
                  if(_formkey.currentState!.validate()){
                    print(title.text);
                    print(description.text);
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
