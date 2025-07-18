import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practicals/Lab-12/Practical-1%20&%202/apiDataController.dart';
import 'package:practicals/Lab-12/Practical-1%20&%202/apiDataModel.dart';

class ApiDataAdd extends StatefulWidget {
  int? id;
  ApiDataAdd({super.key, this.id});

  @override
  State<ApiDataAdd> createState() => _ApiDataAddState();
}

class _ApiDataAddState extends State<ApiDataAdd> {
  ApiDataController adc = Get.put(ApiDataController()); 
  TextEditingController? name;
  TextEditingController? email;
  TextEditingController? city;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.id != null){
      ApiDataModel data = adc.data.firstWhere((element) => element.id == widget.id,);
      name = TextEditingController(text: data.name);
      email = TextEditingController(text: data.email);
      city = TextEditingController(text: data.city);
    } else{
      name = TextEditingController();
      email = TextEditingController();
      city = TextEditingController();
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
            TextFormField(controller: name,decoration: InputDecoration(label: Text("name")),),
            SizedBox(height: 20,),
            TextFormField(controller: email,decoration: InputDecoration(label: Text("email")),),
            SizedBox(height: 20,),
            TextFormField(controller: city,decoration: InputDecoration(label: Text("city")),),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                widget.id==null 
                ? adc.addData(
                  data: ApiDataModel(
                    name: name!.text, 
                    email: email!.text, 
                    city: city!.text,
                  )
                )
                : adc.updateData(
                  data: ApiDataModel(
                    name: name!.text, 
                    email: email!.text, 
                    city: city!.text,
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