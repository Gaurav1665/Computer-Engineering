import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practicals/Lab-11/Practical-1%20&%202%20&%203/apiDataController.dart';

class ApiDataView extends StatefulWidget {
  const ApiDataView({super.key});

  @override
  State<ApiDataView> createState() => _ApiDataViewState();
}

class _ApiDataViewState extends State<ApiDataView> {
  ApiDataController adc = Get.put(ApiDataController()); 

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    adc.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("API Data")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) => adc.searchQuery.value = value,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: adc.filteredData.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.network(adc.filteredData[index].image, fit: BoxFit.cover),
                    ),
                    title: Text(adc.filteredData[index].name),
                    subtitle: Text(adc.filteredData[index].email),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}