import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practicals/Lab-12/Practical-3/todoApiDataAdd.dart';
import 'package:practicals/Lab-12/Practical-3/todoApiDataController.dart';

class TodoApiDataView extends StatefulWidget {
  const TodoApiDataView({super.key});

  @override
  State<TodoApiDataView> createState() => _TodoApiDataViewState();
}

class _TodoApiDataViewState extends State<TodoApiDataView> {
  TodoApiDataController tadc = Get.put(TodoApiDataController()); 
  RxBool isSorted = false.obs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tadc.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Data"),
        actions: [
          IconButton(
            onPressed: () {
              isSorted.value
                ?  tadc.filteredData.sort((a, b) { if(b.isCompleted) { return 1; } return -1; }) 
                :  tadc.filteredData.sort((a, b) { if(a.id! < b.id!) { return 1; } return -1; });
              isSorted.value = !isSorted.value;
            }, 
            icon: Icon(Icons.sort)
          ),
          IconButton(
            onPressed: () => Get.to(TodoApiDataAdd()), 
            icon: Icon(Icons.add)
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) => tadc.searchQuery.value = value,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: tadc.filteredData.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Text(tadc.filteredData[index].title),
                        subtitle: Text(tadc.filteredData[index].description),
                        onTap: () => Get.to(TodoApiDataAdd(id: tadc.filteredData[index].id,)),
                        trailing: IconButton(
                          onPressed: () => Get.defaultDialog(
                            confirm: ElevatedButton(
                              onPressed: () {
                                tadc.deleteData(id: tadc.filteredData[index].id!);
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
                      ),
                      Divider(),
                    ],
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