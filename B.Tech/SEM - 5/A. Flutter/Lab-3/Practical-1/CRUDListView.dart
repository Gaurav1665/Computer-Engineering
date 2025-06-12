import 'package:flutter/material.dart';
import 'package:gaurav/Lab-3/Practical-1/CRUDListAdd.dart';
import 'package:gaurav/Lab-3/Practical-1/CRUDListController.dart';
import 'package:gaurav/Lab-3/Practical-1/CRUDListModel.dart';
import 'package:get/get.dart';

class CRUDListView extends StatelessWidget {
  const CRUDListView({super.key});

  @override
  Widget build(BuildContext context) {
    CRUDListController clc = Get.put(CRUDListController());

    return Scaffold(
      appBar: AppBar(
        title: Text("CRUD"),
        actions: [
          IconButton(onPressed: () => Get.to(CRUDListAdd()), icon: Icon(Icons.add))
        ],
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: clc.getUsers().length,
          itemBuilder: (context, index) {
            CRUDModel user = clc.getUsers()[index];
            return ListTile(
              title: Text(user.userName),
              subtitle: Text(user.userEmail),
              trailing: IconButton(onPressed: () => clc.deleteUser(userID: user.userID), icon: Icon(Icons.delete)),
              onTap: () => Get.to(CRUDListAdd(userId: user.userID,)),
            );
          },
        );
      },),
    );
  }
}