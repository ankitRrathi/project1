import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';

class Billing extends StatelessWidget {
  const Billing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "CheckOut".text
            .xl2
            .textStyle(
                TextStyle(fontFamily: GoogleFonts.poppins().fontFamily))
            .color(context.primaryColor)
            .make(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.payment_outlined),
              title: "Payment Mode".text
                  .textStyle(
                      TextStyle(fontFamily: GoogleFonts.poppins().fontFamily))
                  .color(context.primaryColor)
                  .make(),
              subtitle: "Select Your Preferred Mode of Payment".text
                  .textStyle(context.captionStyle)
                  .color(context.primaryColor)
                  .make(),
            ),
          
          
          ],
        ),
      ),
    );
  }
}
