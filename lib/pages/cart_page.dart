import 'package:flutter/material.dart';
import 'package:project1/core/store.dart';
import 'package:project1/models/cart.dart';
import 'package:project1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.canvasColor,
      appBar: AppBar(
        backgroundColor: context.theme.canvasColor,
        title: "Cart".text.textStyle(TextStyle(fontFamily: GoogleFonts.poppins().fontFamily)).xl4.color(context.primaryColor).make(),
        centerTitle: true,
      ),
      body: Column(children: [
        const _CartList().p16().expand(),
        const Divider(),
        const _CartTotal(),
      ]),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal();

  @override
  Widget build(BuildContext context) {
    final CartModel cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 150,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        VxConsumer(
            builder: ((context, store, status) {
              return "\$${cart.totalPrice}"
                  .text
                  .color(context.primaryColor)
                  .xl4
                  .make();
            }
            ),
            mutations: const {RemoveMutation}),
        30.widthBox,
        ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Mytheme.lightbluishColor),
                    shape: MaterialStateProperty.all(const StadiumBorder())),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: "Buying is not available right now".text.make(),
                      action:
                          SnackBarAction(label: 'Thank You', onPressed: () {}),
                    ),
                  );
                },
                child: const Text('Buy'))
            .p1()
            .w32(context)
      ]),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList();

  @override
  State<_CartList> createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel cart = (VxState.store as MyStore).cart;
    return cart.items.isEmpty
        ? "Nothing to Show in you cart".text.color(context.primaryColor).xl.makeCentered()
        : ListView.builder(
            itemCount: cart.items.length,
            itemBuilder: (context, index) => ListTile(
                leading: const Icon(Icons.done),
                title: cart.items[index].name.text
                    .color(context.primaryColor)
                    .make(),
                trailing: IconButton(
                  onPressed: () => RemoveMutation(cart.items[index]),
                  icon: const Icon(Icons.remove_circle),
                )));
  }
}
