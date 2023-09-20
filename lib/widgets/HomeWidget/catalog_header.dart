import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:project1/widgets/themes.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Calatog App".text.xl5.bold.color(context.theme.primaryColor).make(),
              "trending products".text.xl2.color(context.theme.primaryColor).make()
      
            ],
    );
  }
}