
import 'package:flutter/material.dart';
import 'package:project1/pages/homepage.dart';
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

    
  return  Scaffold(
    body: Homepage(),

  );
  }
}
