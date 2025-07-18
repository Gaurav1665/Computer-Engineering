import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practicals/Lab-12/Practical-1%20&%202/apiDataAdd.dart';
import 'package:practicals/Lab-12/Practical-1%20&%202/apiDataController.dart';

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
      appBar: AppBar(
        title: Text("API Data"),
        actions: [
          IconButton(
            onPressed: () => Get.to(ApiDataAdd()), 
            icon: Icon(Icons.add)
          )
        ],
      ),
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
                    title: Text(adc.filteredData[index].name),
                    subtitle: Text(adc.filteredData[index].email),
                    onTap: () => Get.to(ApiDataAdd(id: adc.filteredData[index].id,)),
                    trailing: IconButton(
                      onPressed: () => Get.defaultDialog(
                        confirm: ElevatedButton(
                          onPressed: () {
                            adc.deleteData(id: adc.filteredData[index].id!);
                            Get.back();
                          }, 
                          child: Text("Confirm")
                        ),
                        cancel: ElevatedButton(
                          onPressed: () => Get.back(), 
                          child: Text("Cancel")
                        ),
                        title: "Delete User",
                        middleText: "Are you sure you want to delete user?"
                      ), 
                      icon: Icon(Icons.delete, color: Colors.red,)
                    ),
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