
// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:project1/pages/homepage.dart';
import 'package:project1/widgets/rounded_btn.dart';



void main()
{
  runApp( const  MaterialApp(
    home: MyApp(),
  )
  );

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  

    
  return const Scaffold(
   
    body:  Homepage(),
  );
  }
}
