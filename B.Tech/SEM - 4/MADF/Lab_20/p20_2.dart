import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MockAPIGetByIdMethod extends StatefulWidget {
  int? id;
  MockAPIGetByIdMethod({super.key, required this.id});

  @override
  State<MockAPIGetByIdMethod> createState() => _MockAPIGetByIdMethodState();
}

class _MockAPIGetByIdMethodState extends State<MockAPIGetByIdMethod> {

  Future<Map<String, dynamic>> fetchUserById({required BuildContext context, required int id}) async {

    final response = await http.get(Uri.parse('https://67c1d88661d8935867e47956.mockapi.io/user/Lab-Practical/$id'));

    if (response.statusCode == 200) {
      final userMap = jsonDecode(response.body);
      Map<String, dynamic> user = {
        "id": int.parse(userMap['id']),
        "name": userMap['name'],
        "avatar": userMap['avatar'],
        "email": userMap['email'],
        "city": userMap['city'],
      };
      return user;
    } else {
      throw Exception('Failed to load user');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(title: Text("mockAPI"),),
      body: FutureBuilder(
        future: fetchUserById(context: context, id: widget.id!),
        builder: (context, snapshot) {
          if(snapshot.data != null){
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Text("${snapshot.data!["name"]}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
                  SizedBox(height: 10),
                  Text("${snapshot.data!["email"]}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  SizedBox(height: 10),
                  Text("${snapshot.data!["city"]}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
                  SizedBox(height: 10),
                ],
              ),
            );
          }
          else{
            return Center(child: CircularProgressIndicator(),);
          }
        }
      )
    );
  }
}


