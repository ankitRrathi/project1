import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: const Text('Round Button'),
      actions:const  [
        Icon(Icons.favorite_outline_rounded)
      ],
    ),
      body: Center(child: Container(width: 200.0,height: 200.0,color: Colors.blue,))
   );
     
  }
}