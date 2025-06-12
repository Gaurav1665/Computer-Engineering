import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gaurav/Lab-3/Practical-1/CRUDListController.dart';
import 'package:gaurav/Lab-3/Practical-1/CRUDListModel.dart';
import 'package:get/get.dart';

class CRUDListAdd extends StatefulWidget {
  int? userId;
  CRUDListAdd({super.key, this.userId});

  @override
  State<CRUDListAdd> createState() => _CRUDListAddState();
}

class _CRUDListAddState extends State<CRUDListAdd> {

  

  TextEditingController? nameController;
  TextEditingController? emailController;

  CRUDListController clc = Get.put(CRUDListController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.userId != null){
      CRUDModel user = clc.getUser(userID: widget.userId!);
      
      nameController = TextEditingController(text: user.userName);
      emailController = TextEditingController(text: user.userEmail);
    } else{
      nameController = TextEditingController();
      emailController = TextEditingController();
    }
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
            CustomTextFormField(controller: emailController, labelText: "User Email"),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                if(widget.userId == null){
                  clc.addUser(
                    user: CRUDModel(
                      userID: clc.getUsers().length, 
                      userName: nameController!.text, 
                      userEmail: emailController!.text
                    )
                  );
                  Get.back();
                } else {
                  clc.updateUser(
                    user: CRUDModel(
                      userID: clc.getUsers().length, 
                      userName: nameController!.text, 
                      userEmail: emailController!.text
                    ),
                    userID: widget.userId!
                  );
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