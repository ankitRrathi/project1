import 'package:flutter/material.dart';
import 'package:project1/pages/homepage.dart';
void main()
{
  runApp( const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const Homepage(),
      themeMode : ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.red),
  
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
    

 
      );
  }
}