import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Calatog App".text.textStyle(TextStyle(fontFamily: GoogleFonts.poppins().fontFamily)).xl5.bold.color(context.theme.primaryColor).make(),
        "trending products".text.textStyle(TextStyle(fontFamily: GoogleFonts.poppins().fontFamily)).xl2.color(context.theme.primaryColor).make()
      ],
    );
  }
}
