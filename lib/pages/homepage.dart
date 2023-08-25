import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
 var iopacity = 1.0;
 bool istrue =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ANIMATED OpACITY"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body:Center(
        child: Column(  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity :  iopacity, 
              duration: Duration(seconds: 2),
              curve: Curves.easeOutQuad,
              child: Container(
                width: 300, 
                height: 100,
                color: Colors.amber,
              ),
      
              ),
              ElevatedButton(onPressed: (){
                setState(() { 
                  if(istrue)
                  {
                    iopacity = 0.0;
                    istrue = false;
                  }
                  else 
                  {
                    iopacity =1.0;
                    istrue =true;

                  }
                  

                });

              }, child: Text('Animation'))
          ],
        ),
      )

 
    );
  }
}
