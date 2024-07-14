// ignore_for_file: prefer_const_constructors

import 'package:app04/pages/cart_page.dart';
import 'package:app04/utils/routes.dart';
import 'package:app04/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetails extends StatelessWidget {
  final Item catalog;

  const HomeDetails({super.key, required this.catalog}) : assert(catalog != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Details".text.color(context.primaryColor).bold.xl2.make(),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: context.theme.primaryColor
        ),
      ),
      bottomNavigationBar: Container(
        color: context.theme.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl3.color(context.primaryColor).make(),
            ElevatedButton.icon(onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
              icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
              ),
              label: "Add To Cart".text.xl.color(Colors.white).make(),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    context.theme.floatingActionButtonTheme.backgroundColor,
                  ),
                  shape: MaterialStateProperty.all(
                      StadiumBorder()
                  ),
              ),
            ).wh(200,50)
          ],
        ).pOnly(right: 16, left: 16, bottom: 32),
      ),
      backgroundColor: context.canvasColor,
      body: SafeArea(
        bottom: false,
        child: Column(
            children: [
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
              ).h32(context),
              Expanded(
                child: VxArc(
                  height: 10.0,
                  arcType: VxArcType.convey,
                  edge: VxEdge.top,
                    child: Container(
                      color: context.cardColor,
                      width: context.screenWidth,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            catalog.name.text.xl4.color(Colors.blueAccent).bold.make(),
                            catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                            30.heightBox,
                            "Lorem ipsum dolor sit amet. Ut repellat nemo qui animi explicabo et tempore aspernatur a perferendis minus id nesciunt tempora. Non voluptas voluptas qui facere amet id omnis ipsa. Et dolores repellat est rerum nemo et laborum dolores et accusamus accusantium.".text.make().p16()
                          ],
                        ).py32(),
                      ),
                    ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}
