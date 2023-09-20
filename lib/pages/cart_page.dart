import 'package:flutter/material.dart';
import 'package:project1/core/store.dart';
import 'package:project1/models/cart.dart';
import 'package:project1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    var catalog;
    return Scaffold(
      backgroundColor: context.theme.canvasColor,
      appBar: AppBar(
        backgroundColor: context.theme.canvasColor,
        title: "Cart".text.xl4.color(context.primaryColor).make(),
        centerTitle: true,
      ),
      body: Column(children: [
        _CartList().p16().expand(),
        Divider(),
        _CartTotal(),
      ]),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 150,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
       VxConsumer(builder:((context, store, status) {
        return
         "\$${_cart.totalPrice}".text.color(context.primaryColor).xl4.make();
       }
       )
       , mutations:{RemoveMutation}),
        30.widthBox,
        ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Mytheme.lightbluishColor),
                    shape: MaterialStateProperty.all(StadiumBorder())),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: "Buying is not available right now".text.make(),
                      action:
                          SnackBarAction(label: 'Thank You', onPressed: () {}),
                    ),
                  );
                },
                child: Text('Buy'))
            .p1()
            .w32(context)
      ]),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList({super.key});

  @override
  State<_CartList> createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items!.isEmpty
        ? "Nothing to Show in you cart".text.xl.makeCentered()
        : ListView.builder(
            itemCount: _cart?.items.length,
            itemBuilder: (context, index) => ListTile(
                leading: Icon(Icons.done),
                title: _cart.items[index].name.text
                    .color(context.primaryColor)
                    .make(),
                trailing: IconButton(
                  onPressed: () => RemoveMutation(_cart.items[index]),
                  icon: Icon(Icons.remove_circle),
                )));
  }
}
