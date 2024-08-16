import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/catalog.dart';
import '../../widgets/theme.dart';


class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return  Image.network(
        image
    ).box.rounded.p16.color(MyTheme.creamColor).make().p16()
        .wPCT(
        context: context,
        widthPCT: context.isMobile?40:20,
        );
  }
}
