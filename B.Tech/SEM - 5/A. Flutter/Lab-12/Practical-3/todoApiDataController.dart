import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:practicals/Lab-12/Practical-3/todoApiModel.dart';

class TodoApiDataController {
  RxList<TodoApiDataModel> data = <TodoApiDataModel>[].obs;
  RxString searchQuery = ''.obs;

  RxList<TodoApiDataModel> get filteredData => RxList<TodoApiDataModel>(
    data.where((item) =>
      item.title.toLowerCase().contains(searchQuery.value.toLowerCase())
    ).toList()
  );

  Future<void> fetchData() async {
    var response = await http.get(Uri.parse("https://67c1d88661d8935867e47956.mockapi.io/user/Lab-Practical"));
    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = convert.jsonDecode(response.body) ;
      data.value = jsonResponse.map((e) => TodoApiDataModel.toTodoApiDataModel(data: e),).toList();
      Get.snackbar("Loaded successfully", "Data Loaded successfull from API.",colorText: Colors.green, backgroundColor: Colors.greenAccent);
    } else {
      Get.snackbar("Error occured", "Request failed with status: ${response.statusCode}.",colorText: Colors.white, backgroundColor: Colors.redAccent);
    }
  }

  Future<void> addData({required TodoApiDataModel data}) async{
    var response = await http.post(
      Uri.parse("https://67c1d88661d8935867e47956.mockapi.io/user/Lab-Practical"),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: convert.jsonEncode({
        'title' : data.title,
        'discription' : data.description,
        'isCompleted' : data.isCompleted,
        'id' : data.id
      })
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      await fetchData();
      Get.snackbar("Added successfully", "Data added successfull in API.",colorText: Colors.green, backgroundColor: Colors.greenAccent);
    } else {
      Get.snackbar("Error occured", "Request failed with status: ${response.statusCode} and error ${response.headers}.",colorText: Colors.white, backgroundColor: Colors.redAccent);
    }
  }

  Future<void> updateData({required TodoApiDataModel data}) async{
    var response = await http.put(
      Uri.parse("https://67c1d88661d8935867e47956.mockapi.io/user/Lab-Practical/${data.id}"),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: convert.jsonEncode({
        'title' : data.title,
        'discription' : data.description,
        'isCompleted' : data.isCompleted,
        'id' : data.id
      })
    );
    if (response.statusCode == 200) {
      await fetchData();
      Get.snackbar("Updated successfully", "Data updated successfull in API.",colorText: Colors.green, backgroundColor: Colors.greenAccent);
    } else {
      Get.snackbar("Error occured", "Request failed with status: ${response.statusCode}.",colorText: Colors.white, backgroundColor: Colors.redAccent);
    }
  }

  Future<void> deleteData({required int id}) async{
    var response = await http.delete(Uri.parse("https://67c1d88661d8935867e47956.mockapi.io/user/Lab-Practical/$id"));
    if (response.statusCode == 200) {
      await fetchData();
      Get.snackbar("Deleted successfully", "Data deleted successfull in API.",colorText: Colors.green, backgroundColor: Colors.greenAccent);
    } else {
      Get.snackbar("Error occured", "Request failed with status: ${response.statusCode}.",colorText: Colors.white, backgroundColor: Colors.redAccent);
    }
  }
}