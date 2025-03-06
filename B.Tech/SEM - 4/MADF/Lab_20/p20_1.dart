import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gaurav/Lab_20/p20_2.dart';
import 'package:http/http.dart' as http;

class MockAPIGetMethod extends StatefulWidget {
  const MockAPIGetMethod({super.key});

  @override
  State<MockAPIGetMethod> createState() => _MockAPIGetMethodState();
}

class _MockAPIGetMethodState extends State<MockAPIGetMethod> {

  Future<List<Map<String, dynamic>>> fetch({required BuildContext context}) async {
    final response = await http.get(Uri.parse("https://67c1d88661d8935867e47956.mockapi.io/user/Lab-Practical"));
    if (response.statusCode == 200) {
      List<dynamic> userMaps = jsonDecode(response.body);
      List<Map<String, dynamic>> users = userMaps.map((userMap) =>
      {
        "id": int.parse(userMap['id']),
        "name": userMap['name'],
        "avatar": userMap['avatar'],
        "email": userMap['email'],
        "city": userMap['city'],
      }).toList();
      return users;
    } else {
      return [];
    }
  }

  Future<void> delete({required BuildContext context, required int id}) async {
    final response = await http.delete(Uri.parse('https://67c1d88661d8935867e47956.mockapi.io/user/Lab-Practical/$id'),);
    if (response.statusCode != 200) {
      throw Exception('Failed to delete user');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("mockAPI"),),
      body: FutureBuilder(
        future: fetch(context: context),
        builder: (context, snapshot) {
          if(snapshot.data != null){
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MockAPIGetByIdMethod(id: snapshot.data![index]["id"]),)),
                  child: Card(
                    elevation: 4,
                    child: Container(
                      height: size.height*0.13,
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          const SizedBox(width: 5),
                          Expanded(
                              child: Column(
                                children: [
                                  Text("${snapshot.data![index]["name"]}",style: TextStyle(fontSize: 25),),
                                  SizedBox(height: 5,),
                                  Text("${snapshot.data![index]["email"]}",style: TextStyle(fontSize: 20),),
                                  SizedBox(height: 5,),
                                  Text("${snapshot.data![index]["city"]}",style: TextStyle(fontSize: 15),),
                                ],
                              )
                          ),
                          IconButton(onPressed: () async{
                            await delete(context: context, id: snapshot.data![index]["id"]);
                            setState(() {  });
                          }, icon: Icon(Icons.delete_forever,color: Colors.red,))
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
          else{
            return Center(child: CircularProgressIndicator(),);
          }
        },
      ),
    );
  }
}
