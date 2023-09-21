import 'package:flutter/material.dart';
import 'package:project1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:project1/widgets/HomeWidget/add_to_cart.dart';

class HomeDetailsPage extends StatelessWidget {
  const HomeDetailsPage({super.key, required this.catalog});
  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.theme.canvasColor,
      ),
      backgroundColor: context.theme.canvasColor,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        children: [
          "\$${catalog.price}".text.bold.color(Colors.red).xl3.make(),
          AddToCart(
            catalog: catalog,
          )
        ],
      ).p20().color(context.theme.cardColor),
      body: Column(
        children: [
          Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image).wh(300, 300)),
          Expanded(
            child: VxArc(
                height: 20,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                    width: context.screenWidth,
                    color: context.theme.cardColor,
                    child: Column(
                      children: [
                        const HeightBox(25),
                        catalog.name.text.xl4.bold
                            .color(context.theme.primaryColor)
                            .make(),
                        catalog.desc.text
                            .color(context.theme.primaryColor)
                            .textStyle(context.captionStyle)
                            .xl
                            .make(),
                        10.heightBox,
                        "Stet takimata voluptua elitr et tempor eos et, at gubergren invidunt eos et est aliquyam stet clita, et ipsum invidunt"
                            .text
                            .xl
                            .color(context.primaryColor)
                            .make()
                            .p20()
                      ],
                    ))),
          )
        ],
      ),
    );
  }
}
