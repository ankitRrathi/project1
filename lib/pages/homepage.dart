// ignore_for_file: unnecessary_import

import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 import 'package:project1/MyRoutes.dart';
 import 'package:project1/models/catalog.dart';
import 'package:project1/pages/homepage.dart';
import 'package:project1/widgets/drawer.dart';
import 'package:project1/widgets/item_widget.dart';
import 'package:project1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:project1/widgets/HomeWidget/catalog_header.dart';
import 'package:project1/widgets/HomeWidget/catalog_list.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    Key? key,
 
  }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    var catalogJson =
        await rootBundle.loadString('assets/files/catalog.json');
    var decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.items = List.from(productData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
  return  Scaffold(
    
    backgroundColor: context.canvasColor,
    floatingActionButton: FloatingActionButton(onPressed: ()=>Navigator.pushNamed(context, MyRoutes.cartpage),
    child:const Icon(CupertinoIcons.cart),).p12(),
    appBar: AppBar(
      backgroundColor: Colors.transparent,
    ),
    drawer: const MyDrawer(),
    body:  Container(
      padding: Vx.m12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CatalogHeader(),
            if(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)
              CatalogList().expand()

            else 
           const  Center(child: CircularProgressIndicator(),),

          ],
      ),
    )
   
  );
 }
}



