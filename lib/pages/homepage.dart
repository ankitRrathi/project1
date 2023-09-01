

import 'package:flutter/material.dart';
//import 'package:project1/widgets/rounded_btn.dart';
 class Homepage extends StatefulWidget {
   const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(vsync: this,duration: Duration(seconds: 3));
  late final Animation<double> _animation = CurvedAnimation(parent: _animation, curve: Curves.elasticOut);
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotationTransition(turns: _animation,
        child: Padding(padding: EdgeInsets.all(8.0),
        child: FlutterLogo(),),),
      ),
    );
    
   }
     }
