
import 'package:flutter/material.dart';
import 'package:project1/MyRoutes.dart';
import 'package:project1/core/store.dart';
import 'package:project1/models/catalog.dart';
import 'package:project1/pages/cart_page.dart';
import 'package:project1/pages/categories.dart';
import 'package:project1/pages/homepage.dart';
import 'package:project1/pages/info.dart';
import 'package:project1/pages/login.dart';
import 'package:project1/pages/profile.dart';
import 'package:project1/pages/support.dart';

import 'package:project1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(
      VxState(store: MyStore(catalog: CatalogModel()), child: const MyApp()));
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
      themeMode: ThemeMode.system,
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const Login(),
        MyRoutes.homeRoute: (context) => const Homepage(),
        MyRoutes.cartpage: (context) => const CartPage(),
        MyRoutes.profile : (context) => const Settings(),
        MyRoutes.category: (context)=>  const Categories(),
        MyRoutes.support:(context)=> const Support(),
        MyRoutes.login : (context)=>const Login(),
        MyRoutes.information :(context)=> const Information(),
      },
    );
  }
}
