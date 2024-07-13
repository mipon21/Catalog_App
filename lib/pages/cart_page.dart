import 'package:app04/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blueAccent
        ),
        backgroundColor: Colors.transparent,
        title: "Cart".text.color(Colors.blueAccent).bold.xl2.make(),
        centerTitle: true,
      ),
      backgroundColor: MyTheme.creamColor,

    );
  }
}
