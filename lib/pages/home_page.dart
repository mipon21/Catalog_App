// ignore_for_file: prefer_const_constructors

import 'package:app04/models/catalog.dart';
import 'package:app04/widgets/item_widgets.dart';
import 'package:flutter/material.dart';
import 'package:app04/widgets/drawer.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  void initState() {
    super.initState();
    loadData();
  }


  @override
  Widget build(BuildContext context) {
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
        child:(CatalogModel.items != null && CatalogModel.items.isNotEmpty)? ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return itemWidget(
              item: CatalogModel.items[index],
            );
          },
        ):Center(
          child: CircularProgressIndicator(),
        ),
      ),
      drawer: MyDrawer(),
    );
  }

  loadData() async {
   var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
   var decodedData = jsonDecode(catalogJson);
   var productsData = decodedData["products"];
   CatalogModel.items =
       List.from(productsData)
           .map<Item>((item) => Item.fromMap(item)).toList();
   setState(() {});
  }
}
