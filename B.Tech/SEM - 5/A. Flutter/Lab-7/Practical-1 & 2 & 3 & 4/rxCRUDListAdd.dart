import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practicals/Lab-7/Practical-1 & 2 & 3 & 4/rxCRUDListController.dart';
import 'package:practicals/Lab-7/Practical-1 & 2 & 3 & 4/rxCRUDListModel.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CRUDListAdd extends StatefulWidget {
  int? userId;
  CRUDListAdd({super.key, this.userId});

  @override
  State<CRUDListAdd> createState() => _CRUDListAddState();
}

class _CRUDListAddState extends State<CRUDListAdd> {

  

  TextEditingController? nameController;
  TextEditingController? emailController;

  RxCRUDListController clc = Get.put(RxCRUDListController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.userId != null){
      RxCRUDModel user = clc.getUser(userID: widget.userId!);
      
      nameController = TextEditingController(text: user.userName.string);
      emailController = TextEditingController(text: user.userEmail.string);
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
                    user: RxCRUDModel(
                      userID: clc.getUsers().length.obs, 
                      userName: nameController!.text.obs, 
                      userEmail: emailController!.text.obs,
                      isFavorite: false.obs
                    )
                  );
                  Get.back();
                } else {
                  RxCRUDModel user = clc.getUser(userID: widget.userId!);
                  clc.updateUser(
                    user: RxCRUDModel(
                      userID: widget.userId!.obs, 
                      userName: nameController!.text.obs, 
                      userEmail: emailController!.text.obs,
                      isFavorite: user.isFavorite
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