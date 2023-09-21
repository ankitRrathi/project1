import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CataloImage extends StatelessWidget {
  const CataloImage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p12
        .color(context.canvasColor)
        .make()
        .p20()
        .w40(context);
  }
}
