

import 'package:flutter/material.dart';
//import 'package:project1/widgets/rounded_btn.dart';
 class Homepage extends StatefulWidget {
   const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>with TickerProviderStateMixin {
  late final AnimationController _animationController =AnimationController(vsync: this,duration: Duration(seconds: 3));
  late final Animation<double> animation =CurvedAnimation(parent: animation, curve: Curves.elasticOut);
 
  @override
   Widget build(BuildContext context) {
   return Scaffold(
    body: Center(
      child: RotationTransition(
        turns: animation,
        child: Padding(padding: EdgeInsets.all(8.0),
        child: FlutterLogo(),
        ),),
    ),
   );
    
   }
     }
