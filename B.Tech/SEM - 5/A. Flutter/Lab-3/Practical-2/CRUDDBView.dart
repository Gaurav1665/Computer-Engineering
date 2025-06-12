import 'package:flutter/material.dart';
import 'package:gaurav/Lab-3/Practical-2/CRUDDBController.dart';
import 'package:gaurav/Lab-3/Practical-2/CRUDDBModel.dart';
import 'package:get/get.dart';

class CRUDDBView extends StatefulWidget {
  const CRUDDBView({super.key});

  @override
  State<CRUDDBView> createState() => _CRUDDBViewState();
}

class _CRUDDBViewState extends State<CRUDDBView> {
  CRUDDBController cdc = Get.put(CRUDDBController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CRUD DB"),),
      body: FutureBuilder(
        future: cdc.fetchUser(), 
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Expanded(child: Center(child: CircularProgressIndicator(color: Color(0xff003366),)));
          }
          if (snapshot.hasError) {
            return Expanded(child: Center(child: Text("Error: ${snapshot.error}", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600), textAlign: TextAlign.center,),),);
          }
          if (snapshot.data == null || snapshot.data!.isEmpty) {
            return Expanded(child: Center(child: Text("No User Found", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600), textAlign: TextAlign.center,),),);
          }
          List<CRUDDBModel> users = snapshot.data!;
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(users[index].Name),
                subtitle: Row(
                  children: [
                    Text("${users[index].City} | ${users[index].Gender}"),
                  ],
                ),
                trailing: IconButton(
                  onPressed: () async{
                    await cdc.deleteUser(UID: users[index].UID);
                  }, 
                  icon: Icon(Icons.delete)
                ),
              );
            },
          );
        },
      ),
    );
  }
}