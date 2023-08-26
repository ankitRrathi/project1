import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with SingleTickerProviderStateMixin {
 late Animation<double> animation;
 late AnimationController animationController;
 late Animation coloranimation;
 @override
  void initState() {

    
    super.initState();
     animationController =  AnimationController(vsync: this,duration:const Duration(seconds: 3));
    animation = Tween<double>(begin: 0.0, end: 200.0).animate(animationController);
    coloranimation= ColorTween(begin: Colors.amber,end : Colors.purple).animate(animationController);

   
    animationController.addListener(() {setState(() {
      
    });
    });
    animationController.forward();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ANIMATED OpACITY"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body : Center(
        child: Container(
          width: animation.value, 
          height:  animation.value, 
          color: coloranimation.value,

        ),
      ),
     
    );
  }
}
