import 'package:flutter/material.dart';
import 'package:gaurav/Lab-2/Practical-1/FavoriteListController.dart';
import 'package:gaurav/Lab-2/Practical-1/FavoriteListModel.dart';

class FavoriteListView extends StatefulWidget {
  const FavoriteListView({super.key});

  @override
  State<FavoriteListView> createState() => _FavoriteListViewState();
}

class _FavoriteListViewState extends State<FavoriteListView> {
  FavoriteListController flc = new FavoriteListController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: FavoriteListModel.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(FavoriteListModel.items[index]["name"]),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  flc.changeFavorite(index);
                });
              }, 
              icon: Icon( flc.getFavoriteValue(index) ? Icons.thumb_up : Icons.thumb_down)
            ),
          );
        },
      ),
    );
  }
}