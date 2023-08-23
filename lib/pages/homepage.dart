import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}


class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
     
  return Scaffold(
    appBar:  AppBar(
        title: const   Text("ANKIT"),
        backgroundColor: const Color.fromARGB(255, 5, 130, 111),
        foregroundColor: const Color.fromARGB(255, 223, 94, 8),
        
      ),
      body: Center(
        child: Container
             (
              width: 100, 
              height: 100, 
              color: Colors.blue.shade200,
              child: Text('Hello',style: TextStyle(fontFamily: 'ankit',fontSize: 45),),
             ),
      )


  );
  }
}                                                            