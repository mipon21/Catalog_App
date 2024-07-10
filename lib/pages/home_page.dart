// ignore_for_file: prefer_const_constructors

import 'package:app04/models/catalog.dart';
import 'package:app04/widgets/item_widgets.dart';
import 'package:flutter/material.dart';
import 'package:app04/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList  = List.generate(20, (index)=> CatalogModel.items[0]);
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: new Center(
            child: new Text(
                "Catalog App", textAlign: TextAlign.center
            )
        ),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.5,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return itemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
