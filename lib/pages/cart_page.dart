// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// ignore_for_file: prefer_const_constructors

import 'package:app04/models/cart.dart';
import 'package:app04/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';


class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: context.primaryColor
        ),
        backgroundColor: Colors.transparent,
        title: "Cart".text.color(context.primaryColor).bold.xl2.make(),
        centerTitle: true,
      ),
      backgroundColor: context.canvasColor,
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),

    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;

    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxConsumer(
            builder: (BuildContext context, dynamic data, VxStatus? status) {
              // Assuming `_cart.totalPrice` is accessible here
              return "\$${_cart.totalPrice}"
                  .text.xl4
                  .color(context.theme.primaryColor)
                  .make();
            },
            mutations: {RemoveMutation},
          ),

          30.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: "Buying Not Supported".text.color(context.primaryColor).make(),
                  backgroundColor: context.theme.floatingActionButtonTheme.backgroundColor,

              ));
            },
            child: "Buy".text.xl2.color(Colors.white).make(),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  context.theme.floatingActionButtonTheme.backgroundColor,
                ),
                shape: MaterialStateProperty.all(
                    StadiumBorder()
                )
            ),
          ).wh(100, 50)
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
   _CartList({super.key});

  @override
  State<_CartList> createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items.isEmpty?"Nothing to Show".text.makeCentered() : ListView.builder(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.done),
          trailing: IconButton(
            icon: Icon(Icons.remove_circle_outline),
            onPressed: (){
              RemoveMutation(_cart.items[index]);
              setState(() {
              });
            },
          ),
          title: _cart.items[index].name.text.make(),
        ),
        itemCount: _cart.items?.length,
    );
  }
}

