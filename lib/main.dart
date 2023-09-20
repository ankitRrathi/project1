import 'dart:convert';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project1/MyRoutes.dart';
import 'package:project1/core/store.dart';
import 'package:project1/models/catalog.dart';
import 'package:project1/pages/cart_page.dart';
import 'package:project1/pages/homepage.dart';
//import 'package:project1/widgets/drawer.dart';
//import 'package:project1/widgets/item_widget.dart';
import 'package:project1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp( VxState(store: MyStore(catalog: CatalogModel()),
    child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const Homepage(),
        MyRoutes.homeRoute: (context) => const Homepage(),
        MyRoutes.cartpage: (context) => const CartPage()
        // MyRoutes.loginRoute: (context) => Loginpage(),
      },
    );
  }
}
