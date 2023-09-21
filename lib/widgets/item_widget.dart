import 'package:flutter/material.dart';
import 'package:project1/models/catalog.dart';
import 'package:project1/widgets/rounded_btn.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    const Padding(padding: EdgeInsets.all(10));

    return SizedBox(
      height: 100,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Products()));
        },
        child: Card(
          elevation: 10,
          shadowColor: Colors.black45,
          child: ListTile(
            leading: Image.network(item.image),
            title: Text(
              item.name,
              style: const TextStyle(
                  fontFamily: 'ankit', fontWeight: FontWeight.bold),
            ),
            subtitle: Text(item.desc),
            trailing: Text(
              "\$${item.price}",
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
