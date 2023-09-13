
// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project1/pages/homepage.dart';
import 'package:project1/widgets/rounded_btn.dart';
             

void main()
{
  runApp(   MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  )
  );

}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Homepage(),
    );
  }
}
