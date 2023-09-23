import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Billing extends StatelessWidget {
  const Billing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Payment".text.xl.color(context.primaryColor).make(),
      ),
    );
  }
}