// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app04/widgets/drawer.dart';
import 'package:app04/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
              iconSize: 30,
              color: context.theme.primaryColor,
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                "Catalog App".text.xl5.bold.color(context.theme.primaryColor).make(),
                "Trending Products".text.color(context.theme.primaryColor).xl2.make(),
              ],
            ).pOnly(bottom: 20),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.dark_mode),
            iconSize: 30,
            color: context.theme.primaryColor,
          )
        ],
      ),
    );
  }
}
