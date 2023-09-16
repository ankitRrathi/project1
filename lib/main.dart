
// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/pages/homepage.dart';
import 'package:project1/widgets/rounded_btn.dart';
             

void main()
{
  runApp(   MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  )
  );

}
class MyApp extends StatefulWidget {
  const MyApp({super.key});


  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 
  @override
  Widget build(BuildContext context) {
   
    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('Catalog App',style: TextStyle(fontSize: 20,fontFamily: 'ankit',color: Colors.black),
        ),
        centerTitle: true,
        iconTheme:IconThemeData(
          color: Colors.black

        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.cart),),
          
        ],
      ),
      drawer: Drawer(
       
      
      
      
        child: ListView(
          padding: EdgeInsets.zero,
          
          children:const  [
            DrawerHeader(
              margin: EdgeInsets.zero,
               padding: EdgeInsets.zero,
               
            decoration: BoxDecoration(
              color: Colors.deepPurple
            ),
            
              child: UserAccountsDrawerHeader(
                accountName:Text('AnkitR Rathi'), accountEmail:Text('ar487084@g,mai.com'),
              decoration: BoxDecoration(color: Colors.deepPurple),
              currentAccountPicture: CircleAvatar(backgroundImage :NetworkImage('https://imageio.forbes.com/specials-images/imageserve/641397e79f04500b85460b8f/Apple--iPhone-15--iPhone-15-Pro-Max--iPhone-15-Pro--iPhone-15-Pro-design--iPhone-15/0x0.jpg?format=jpg&crop=923,692,x364,y0,safe&width=1440') ),
              )),
            ListTile(
              trailing: Icon(CupertinoIcons.arrow_up_right),
              leading: Icon(CupertinoIcons.home,color: Colors.black,),
              title: Text('Home',textAlign: TextAlign.start,
              style: TextStyle(fontSize: 15,fontFamily: 'ankit'),),
            ),
            Divider(color: Colors.grey,thickness: 2,),
            ListTile(
              trailing: Icon(CupertinoIcons.arrow_up_right),
              leading : Icon(CupertinoIcons.search),
              title: Text('Search',style : TextStyle(fontFamily: 'ankit',fontSize: 15),
              
              
              ),
            
            ),
            Divider(color: Colors.grey,thickness: 2,),
            ListTile(
              trailing: Icon(CupertinoIcons.arrow_up_right),
              leading: Icon(CupertinoIcons.cart_fill),
              title: Text('Cart',style: TextStyle(fontFamily: 'ankit',fontSize : 15)),

            ),
            
          ],
      
        ),
      ),
      
     
    );
  }
}
