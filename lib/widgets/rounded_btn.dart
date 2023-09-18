import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        
       title: const Text("Catalog",style: TextStyle(fontSize: 21,fontFamily: 'ankit',color: Colors.black),),
       iconTheme:const IconThemeData(
        color: Colors.black
       ),
       centerTitle: true,
       actions: const [
        Icon(CupertinoIcons.profile_circled)
      
       ],
      ),
      body: const Column(
        children: [],
      ),
      
    );
  }
}

