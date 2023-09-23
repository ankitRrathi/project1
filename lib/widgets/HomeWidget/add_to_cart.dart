import 'package:flutter/material.dart';
import 'package:project1/core/store.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:project1/widgets/themes.dart';
import 'package:project1/models/catalog.dart';
import 'package:project1/models/cart.dart';

class AddToCart extends StatefulWidget {
  final Item catalog;

  const AddToCart({
    super.key,
    required this.catalog,
  });

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final CartModel cart = (VxState.store as MyStore).cart;
    bool isInCart = cart.items.contains(widget.catalog);

    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Mytheme.lightbluishColor),
            shape: MaterialStateProperty.all(const StadiumBorder())),
        onPressed: () {
          if (!isInCart) {
            AddMutation(widget.catalog);
          }
        },
        child:
            isInCart ? const  Icon(Icons.done) : const Text('Add to Cart').p(5));
  }
}
