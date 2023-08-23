import 'package:flutter/material.dart';
import 'package:project1/pages/homepage.dart';
class  RoundButton extends StatelessWidget {
  const RoundButton({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Click Here for Welcome Page !',style: TextStyle(fontSize: 31,fontFamily: 'ankit'),),
            ElevatedButton(onPressed: (){
      
              Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
              
      
            }, child: Text('Login'))
      
      
          ],
        ),
      ),


    );
   
    
      
  }
}