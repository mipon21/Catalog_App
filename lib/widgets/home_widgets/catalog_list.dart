import 'package:app04/models/cart.dart';
import 'package:app04/pages/home_detail.dart';
import 'package:app04/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/catalog.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index){
          final catalog = CatalogModel.items[index];
          return InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(
                  builder: (context) => HomeDetails(
                  catalog: catalog))
              ),
              child: CatalogItem(catalog: catalog)
          );
        }
    );
  }
}
class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({super.key, required this.catalog}):assert(catalog != null);
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
          children: [
            Hero(
                tag: Key(catalog.id.toString()),
                child: CatalogImage(image: catalog.image)
            ),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.xl.color(Colors.blueAccent).bold.make(),
                catalog.desc.text.textStyle(context.captionStyle).make(),
                30.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${catalog.price}".text.bold.xl.make(),
                    ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HomeDetails(
                        catalog: catalog))
                ),
                child: "Details".text.color(Colors.white).make(),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      context.theme.floatingActionButtonTheme.backgroundColor,
                    ),
                    shape: MaterialStateProperty.all(
                        StadiumBorder()
                    )
                ),
              )
                  ],
                ).pOnly(right: 8.0)
              ],
            ))
          ],
        )
    ).color(context.cardColor).rounded.square(150).make().py16();
  }
}
