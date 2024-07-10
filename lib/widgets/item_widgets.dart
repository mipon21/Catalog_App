// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../models/catalog.dart';

class itemWidget extends StatelessWidget {
  final Item item;
  const itemWidget({super.key, required this.item}) : assert(item != null);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name}");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
              "\$${item.price}",
            textScaleFactor: 1.5,
            style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
