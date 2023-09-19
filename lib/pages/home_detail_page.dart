import 'package:flutter/material.dart';
import 'package:project1/models/catalog.dart';
import 'package:project1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatelessWidget {
  const HomeDetailsPage({super.key,required this.catalog});
  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Mytheme.creamecolor,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\$${catalog.price}".text.bold.color(Colors.red).xl3.make(),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Mytheme.darkbluishColor),
                    shape: MaterialStateProperty.all(StadiumBorder())
                  ),
                  onPressed: (){}, child: Text('Add to Cart')).wh(150, 40)
              ],
      ).p20().color(Mytheme.creamecolor),
      body: Column(
        children: [
          Hero(tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image).wh(300, 300)
            ),
            Expanded(child: VxArc(height: 20,
            arcType: VxArcType.convey,
            edge: VxEdge.top,
              child: Container(width: context.screenWidth,
              child: Column(
                children: [
                  HeightBox(25),
                  catalog.name.text.xl4.bold.make(),
                  catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                  10.heightBox,
                  Text("Stet takimata voluptua elitr et tempor eos et, at gubergren invidunt eos et est aliquyam stet clita, et ipsum invidunt.").p12(),
                ],
              ),
                color: Colors.red[100],)).p(8)
                )



        ],
      ),

    );
  }
}