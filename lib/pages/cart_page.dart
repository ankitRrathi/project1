import 'package:flutter/material.dart';
import 'package:project1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mytheme.creamecolor,
      appBar: AppBar(
        title:const  Text('Cart'),
        centerTitle: true,
      ),
      
    );
  }
}