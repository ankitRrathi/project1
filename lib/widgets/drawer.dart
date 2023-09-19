import 'package:flutter/material.dart';
import 'package:project1/pages/profile.dart';
import 'package:flutter/cupertino.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
              padding: EdgeInsets.zero,
              
              children:  [
               const DrawerHeader(
                  margin: EdgeInsets.zero,
                   padding: EdgeInsets.zero,
                   
                decoration: BoxDecoration(
                  color: Colors.deepPurple
                ),
                
                  child: UserAccountsDrawerHeader(
                    accountName:Text('AnkitR Rathi'), accountEmail:Text('ar487084@gmail.com'),
                  decoration: BoxDecoration(color: Colors.deepPurple),
                  currentAccountPicture: CircleAvatar(backgroundImage :AssetImage('assets/images/a.jpg') ),
                  )
                  ),
               const InkWell(
                  child: ListTile(
                    trailing: Icon(CupertinoIcons.arrow_up_right),
                    leading: Icon(CupertinoIcons.home,color: Colors.black,),
                    title: Text('Home',textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 15,fontFamily: 'ankit'),),
                  ),
                ),
               const Divider(color: Colors.grey,thickness: 2,),
              const  InkWell(
                  child: ListTile(
                    trailing: Icon(CupertinoIcons.arrow_up_right),
                    leading : Icon(Icons.category_sharp,color:Colors.black),
                    title: Text('Categories',style : TextStyle(fontFamily: 'ankit',fontSize: 15),
                    
                    
                    ),
                  
                  
                  ),
                ),
              const   Divider(color: Colors.grey,thickness: 2,),
              const   InkWell(
                  child: ListTile(
                    trailing: Icon(CupertinoIcons.arrow_up_right),
                    leading: Icon(Icons.support_agent_outlined,color: Colors.black,),
                    title: Text('Support',style: TextStyle(fontFamily: 'ankit',fontSize : 15)),
                
                  ),
                ),
              const  Divider(color: Colors.grey,thickness: 2,),
                InkWell(
        onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>const Settings()));
        },
        child:const ListTile(
        trailing: Icon(CupertinoIcons.arrow_up_right), // Use a constant icon here
        leading: Icon(CupertinoIcons.person_crop_circle_fill_badge_exclam, color: Colors.black),
        title: Text('Profile', style: TextStyle(fontFamily: 'ankit', fontSize: 15)),
        ),
      ),
      
              const   Divider(color: Colors.grey,thickness: 2,),
                
              ],
          
      ),
    );
      
        
  }
}