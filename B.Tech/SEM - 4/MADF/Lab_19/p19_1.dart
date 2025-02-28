import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

class FetchJSONData extends StatefulWidget {
  const FetchJSONData({super.key});

  @override
  State<FetchJSONData> createState() => _FetchJSONDataState();
}

class _FetchJSONDataState extends State<FetchJSONData> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("assets/data/data.json"),
        builder: (context, snapshot) {
          if(snapshot.data != null){
            final data = jsonDecode(snapshot.data!);
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${data![index]["name"]}"),
                  subtitle: Text("${data![index]["email"]}"),
                  trailing: Text("${data![index]["age"]}"),
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
