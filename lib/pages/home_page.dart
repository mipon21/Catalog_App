// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:app04/core/store.dart';
import 'package:app04/models/cart.dart';
import 'package:app04/models/catalog.dart';
import 'package:app04/utils/routes.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:app04/widgets/drawer.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final url = "";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;

    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: context.canvasColor,
      floatingActionButton: VxBuilder(
        mutations: {AddMutation, RemoveMutation}, // Define mutations if needed
        builder: (BuildContext context, dynamic data, VxStatus? status) {
          return FloatingActionButton(
            shape: CircleBorder(),
            backgroundColor: context.theme.floatingActionButtonTheme.backgroundColor,
            onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ).badge(count: _cart.items.length);
        },
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if(CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().expand()
              else
                CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }
}

