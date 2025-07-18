import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:practicals/Lab-11/Practical-1%20&%202%20&%203/apiDataModel.dart';

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
      Get.snackbar("Error occured", "Request failed with status: ${response.statusCode}.",colorText: Colors.red, backgroundColor: Colors.redAccent);
    }
  }
}