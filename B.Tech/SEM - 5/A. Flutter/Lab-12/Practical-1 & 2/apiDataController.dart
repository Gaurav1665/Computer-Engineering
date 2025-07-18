import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:practicals/Lab-12/Practical-1%20&%202/apiDataModel.dart';

class ApiDataController {
  RxList<ApiDataModel> data = <ApiDataModel>[].obs;
  RxString searchQuery = ''.obs;

  RxList<ApiDataModel> get filteredData => RxList<ApiDataModel>(
    data.where((item) =>
      item.name.toLowerCase().contains(searchQuery.value.toLowerCase()) ||
      item.email.toLowerCase().contains(searchQuery.value.toLowerCase())
    ).toList()
  );

  Future<void> fetchData() async {
    var response = await http.get(Uri.parse("https://67c1d88661d8935867e47956.mockapi.io/user/Lab-Practical"));
    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = convert.jsonDecode(response.body) ;
      data.value = jsonResponse.map((e) => ApiDataModel.toApiDataModel(data: e),).toList();
      Get.snackbar("Loaded successfully", "Data Loaded successfull from API.",colorText: Colors.green, backgroundColor: Colors.greenAccent);
    } else {
      Get.snackbar("Error occured", "Request failed with status: ${response.statusCode}.",colorText: Colors.white, backgroundColor: Colors.redAccent);
    }
  }

  Future<void> addData({required ApiDataModel data}) async{
    var response = await http.post(
      Uri.parse("https://67c1d88661d8935867e47956.mockapi.io/user/Lab-Practical"),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: convert.jsonEncode({
        'name' : data.name,
        'email' : data.email,
        'city' : data.city,
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

  Future<void> updateData({required ApiDataModel data}) async{
    var response = await http.put(
      Uri.parse("https://67c1d88661d8935867e47956.mockapi.io/user/Lab-Practical/${data.id}"),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: convert.jsonEncode({
        'name' : data.name,
        'email' : data.email,
        'city' : data.city,
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