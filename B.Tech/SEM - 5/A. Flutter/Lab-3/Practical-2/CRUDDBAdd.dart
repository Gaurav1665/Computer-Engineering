import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gaurav/Lab-3/Practical-1/CRUDListModel.dart';
import 'package:gaurav/Lab-3/Practical-2/CRUDDBController.dart';
import 'package:gaurav/Lab-3/Practical-2/CRUDDBModel.dart';
import 'package:get/get.dart';

class CRUDDBAdd extends StatefulWidget {
  int? userId;
  CRUDDBAdd({super.key, this.userId});

  @override
  State<CRUDDBAdd> createState() => _CRUDDBAddState();
}

class _CRUDDBAddState extends State<CRUDDBAdd> {
 

  TextEditingController? nameController;
  TextEditingController? cityController;

  CRUDDBController cdc = Get.put(CRUDDBController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.userId != null){
      loadUserData();

    } else{
      nameController = TextEditingController();
      cityController = TextEditingController();
    }
  }

  void loadUserData()async{
    CRUDDBModel user = await cdc.fetchUserById(UID: widget.userId!);
    nameController = TextEditingController(text: user.Name);
    cityController = TextEditingController(text: user.City);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextFormField(controller: nameController, labelText: "User Name"),
            const SizedBox(height: 20,),
            CustomTextFormField(controller: cityController, labelText: "User Email"),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                if(widget.userId == null){
                  
                  Get.back();
                } else {
                  
                  Get.back();
                }
              }, 
              child: Text(widget.userId != null ? "Update User" : "Add User")
            )
          ],
        ),
      ),
    );
  }

  Widget CustomTextFormField({
    TextEditingController? controller, 
    String? labelText, 
  }){
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        labelText: labelText,
      ),
    );
  }
}