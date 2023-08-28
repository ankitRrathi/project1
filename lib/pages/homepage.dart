import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('Shared Prefs'),
        shadowColor: Colors.black87,
        centerTitle: true
    

      ),
      body : ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width : 200, 
            height: 200,
            color: Colors.amber,
         ),
           Container(
            width : 200, 
            height: 200,
            color: Colors.green,
         ),  Container(
            width : 200, 
            height: 200,
            color: Colors.black,
         ),  Container(
            width : 200, 
            height: 200,
            color: Colors.black,
         ),  Container(
            width : 200, 
            height: 200,
            color: Colors.red,
         ),  Container(
            width : 200, 
            height: 200,
            color: Colors.purple,
         ),  Container(
            width : 200, 
            height: 200,
            color: Colors.grey,
         ),  Container(
            width : 200, 
            height: 200,
            color: Colors.pink,
         ),  Container(
            width : 200, 
            height: 200,
            color: Colors.blue,
         ),  Container(
            width : 200, 
            height: 200,
            color: Colors.green,
         ),  Container(
            width : 200, 
            height: 200,
            color: Colors.red,
         ),  Container(
            width : 200, 
            height: 200,
            color: Colors.black,
         ),
        ],
      )
      
    
    );
 
  
  }
}

