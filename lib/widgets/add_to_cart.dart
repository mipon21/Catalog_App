

import 'package:app04/core/store.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/cart.dart';
import '../models/catalog.dart';

class AddToCart extends StatelessWidget {
   AddToCart({
    super.key,
    required this.catalog,
  });

  final Item catalog;

  @override
  Widget build(BuildContext context) {


    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart.items.contains(catalog) ?? false;
    return ElevatedButton(
      onPressed: () {

        if(!isInCart) {
          AddMutation(catalog);
        }
      },
      child: isInCart ? Icon(Icons.done): "Add To Cart".text.color(Colors.white).make(),
      style: ButtonStyle(

          backgroundColor: MaterialStateProperty.all(
            context.theme.floatingActionButtonTheme.backgroundColor,
          ),
          shape: MaterialStateProperty.all(
              StadiumBorder()
          )
      ),
    );
  }
}