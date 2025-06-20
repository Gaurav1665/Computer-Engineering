import 'package:flutter/material.dart';

import 'package:practicals/Lab-7/Practical-1 & 2 & 3 & 4/rxCRUDListAdd.dart';
import 'package:practicals/Lab-7/Practical-1 & 2 & 3 & 4/rxCRUDListController.dart';
import 'package:practicals/Lab-7/Practical-1 & 2 & 3 & 4/rxCRUDListModel.dart';
import 'package:get/get.dart';

class RxCRUDListView extends StatelessWidget {
  const RxCRUDListView({super.key});

  @override
  Widget build(BuildContext context) {
    RxCRUDListController clc = Get.put(RxCRUDListController());

    return Scaffold(
      appBar: AppBar(
        title: Text("CRUD using Rx"),
        actions: [
          IconButton(onPressed: () => Get.to(CRUDListAdd()), icon: Icon(Icons.add))
        ],
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: clc.getUsers().length,
          itemBuilder: (context, index) {
            RxCRUDModel user = clc.getUsers()[index];
            return ListTile(
              title: Text(user.userName.value),
              subtitle: Text(user.userEmail.value),
              leading: Obx(() => IconButton(
                onPressed: () => clc.changeFavorite(userID: user.userID.value), 
                icon: Icon(user.isFavorite.value ? Icons.favorite : Icons.favorite_border)
              ),),
              trailing: IconButton(
                onPressed: () => clc.deleteUser(userID: user.userID.value), 
                icon: Icon(Icons.delete)
              ),
              onTap: () => Get.to(CRUDListAdd(userId: user.userID.value,)),
            );
          },
        );
      },),
    );
  }
}