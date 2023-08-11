import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
   const Homepage({super.key});
 


   
  @override
  Widget build(BuildContext context) {
    var time =DateTime.now();




    return Scaffold(
      appBar:  AppBar(
        title:   Text("ANKIT"),
        backgroundColor: Color.fromARGB(255, 132, 95, 14),
        foregroundColor: Color.fromARGB(255, 65, 14, 96),
      ),
      body: Center(
        child: Container(
          width: 200, 
          height: 200,
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children :[    Text('Current Time : $time',style : TextStyle(fontSize: 21,fontFamily: 'ankit'),),
            ElevatedButton(onPressed :(){
               
            }, child: Text('Click '),)
            

            ]
        
          

          ),
        ),
      ),
    );
  }
}                                                               