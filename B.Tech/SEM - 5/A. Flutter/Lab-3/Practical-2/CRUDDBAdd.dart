import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practicals/Lab-3/Practical-2/CRUDDBController.dart';
import 'package:practicals/Lab-3/Practical-2/CRUDDBModel.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CRUDDBAdd extends StatefulWidget {
  int? userId;
  CRUDDBAdd({super.key, this.userId});

  @override
  State<CRUDDBAdd> createState() => _CRUDDBAddState();
}

class _CRUDDBAddState extends State<CRUDDBAdd> {
 

  TextEditingController? nameController;
  TextEditingController? cityController;
  String? selectedGender;

  CRUDDBController cdc = Get.put(CRUDDBController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.userId != null){
      loadUserData();

    } else{
      nameController = TextEditingController();
      selectedGender = "";
      cityController = TextEditingController();
    }
  }

  void loadUserData()async{
    CRUDDBModel user = await cdc.fetchUserById(UID: widget.userId!);
    nameController = TextEditingController(text: user.Name);
    selectedGender = user.Gender;
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
            const SizedBox(height: 20),
            Container(
              height: 50,
              decoration: BoxDecoration(border: Border.all(color: Color(0xff2C2C2C)), borderRadius: BorderRadius.circular(12)),
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Gender", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff2C2C2C))),
                  Row(
                    children: [
                      Radio<String>(value: "Male", groupValue: selectedGender, onChanged: (String? value) => setState(() => selectedGender = value)),
                      const Text("Male"),
                      const SizedBox(width: 10),
                      Radio<String>(value: "Female", groupValue: selectedGender, onChanged: (String? value) => setState(() => selectedGender = value)),
                      const Text("Female"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            CustomTextFormField(controller: cityController, labelText: "User City"),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () async{
                if(widget.userId == null){
                  cdc.addUser(user: CRUDDBModel(Name: nameController!.text, City: cityController!.text, Gender: selectedGender!));
                  Get.back();
                } else {
                  cdc.updateUser(user: CRUDDBModel(UID: widget.userId ,Name: nameController!.text, City: cityController!.text, Gender: selectedGender!));
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