import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gaurav/Lab_19/userModel.dart';

class ModelClassDemo extends StatefulWidget {
  const ModelClassDemo({super.key});

  @override
  State<ModelClassDemo> createState() => _ModelClassDemoState();
}

class _ModelClassDemoState extends State<ModelClassDemo> {

  Future<List<UserModel>> fetchuser(BuildContext context) async{
    List<UserModel> userList = [];
    String data = await DefaultAssetBundle.of(context).loadString("assets/data/data.json");
    List<dynamic>decodedData = jsonDecode(data);

    decodedData.forEach((user) {
      userList.add(UserModel(id: user["id"], name: user["name"], email: user["email"], age: user["age"]));
    },);
    return userList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: fetchuser(context),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(),);
          }
          else if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${snapshot.data![index].name}"),
                  subtitle: Text("${snapshot.data![index].email}"),
                  trailing: Text("${snapshot.data![index].age}"),
                );
              },
            );
          }
          else{
            return Center(child: Text("error"),);
          }
        },
      ),
    );
  }
}
