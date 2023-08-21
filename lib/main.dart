//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project1/widgets/rounded_btn.dart';
//import 'package:flutter/widgets.dart';
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

    
  return Scaffold(
    appBar:  AppBar(
        title: const   Text("ANKIT"),
    
        //backgroundColor: const Color.fromARGB(255, 5, 130, 111),
        //foregroundColor: const Color.fromARGB(255, 223, 94, 8),


  
  ),
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 200, 
          height: 100,
          child: RoundButton(
            btname: 'Play',
            icon: const Icon(Icons.youtube_searched_for),
            callback: ()
            {
              print('Played');
            },
            textstyle: const TextStyle(fontFamily: 'ankit',fontSize: 31,fontWeight: FontWeight.bold),
            ),
        ),
         const SizedBox(height: 50),
        SizedBox(
          width: 200, 
          height: 100,
          child: RoundButton(
            btname: 'Login',
            icon: const Icon(Icons.facebook_sharp),
            callback: ()
            {
              print('login Successful');
            },
            textstyle:const TextStyle(fontFamily: 'ankit',fontSize: 31,fontWeight: FontWeight.bold),
            bgcolor: const Color.fromARGB(255, 18, 175, 99),
            ),
        ),
      ],
    ),
  )
  
  );
  }
}
