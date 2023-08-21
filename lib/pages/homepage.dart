import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';


class Homepage extends StatelessWidget {
  const Homepage
({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar:  AppBar(
        title: const   Text("ANKIT"),
        backgroundColor: const Color.fromARGB(255, 5, 130, 111),
        foregroundColor: const Color.fromARGB(255, 223, 94, 8),
      ),
      body: const  Text('This is data '),


  );
  }
}                                                            