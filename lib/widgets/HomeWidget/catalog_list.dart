import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:project1/widgets/HomeWidget/catalog_image.dart';
import 'package:project1/pages/home_detail_page.dart';
import 'package:project1/widgets/HomeWidget/add_to_cart.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeDetailsPage(catalog: catalog))),
              child: CatalogItem(catalog: catalog));
        });
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(children: [
      Hero(
          tag: Key(catalog.id.toString()),
          child: CataloImage(image: catalog.image)),
      Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          catalog.name.text.xl
              .textStyle(
                  TextStyle(fontFamily: GoogleFonts.poppins().fontFamily))
              .color(
                context.primaryColor,
              )
              .bold
              .make(),
          catalog.desc.text
              .textStyle(context.captionStyle)
              .color(context.primaryColor)
              .make(),
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              "\$${catalog.price}"
                  .text
                  .color(context.primaryColor)
                  .bold
                  .xl
                  .make(),
              AddToCart(
                catalog: catalog,
              ),
            ],
          ).px(5)
        ],
      ))
    ])).color(context.cardColor).roundedLg.square(150).make().py16();
  }
}
