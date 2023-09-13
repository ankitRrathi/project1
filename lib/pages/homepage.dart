
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project1/widgets/rounded_btn.dart';



class Homepage extends StatefulWidget {
  const Homepage({
    Key? key,
 
  }) : super(key: key);
      

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>{
  bool change =false;
 
 
  @override
  Widget build(BuildContext context) {
    
    return Material(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Container(height: 200,
          color: Colors.white,
            child: Image.asset('assets/images/abc.png',fit: BoxFit.cover,)),
          Text('Welcome',style: TextStyle(fontSize: 30,fontFamily: 'ankit'),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                TextFormField( decoration: InputDecoration(hintText: 'Enter Username',
                  label: Text('Username')
                ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    
                    label: Text('Password')
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              ],
            ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: ()
            {
              setState(() {
                change =false;

              });
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>RoundButton()));
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width: change? 50 : 150, 
              height: 50, alignment: Alignment.center,
              child: Text('Login',style: TextStyle(fontSize: 15,fontFamily: 'ankit',color: Colors.white),),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(change ? 15 : 20)
              ),
            ),
          )
          // ElevatedButton(onPressed: (){
          //   Navigator.push(context, MaterialPageRoute(builder:(context) => RoundButton() ));
          // }, child: Text('Login'))
        ],
      ),
    

    );
 }
 }
 