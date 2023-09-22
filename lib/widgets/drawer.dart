import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/MyRoutes.dart';
import 'package:project1/pages/categories.dart';
import 'package:project1/pages/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:project1/pages/support.dart';
import 'package:velocity_x/velocity_x.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
           DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              decoration:  BoxDecoration(color: context.canvasColor),
              child: UserAccountsDrawerHeader(
                accountName: Text('AnkitR Rathi',style: TextStyle(color: context.primaryColor),),
                accountEmail: Text('ar487084@gmail.com',style: TextStyle(color: context.primaryColor),),
                decoration:  BoxDecoration(color: context.canvasColor),
                currentAccountPicture:Container(
                  height: 80,
                  width: 80, 
                  decoration:const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.green,Colors.red,Colors.yellow,Colors.purple
                      ],
                      ),shape: BoxShape.circle,
                  
                  ),
                  child:  Padding(
                    padding: const  EdgeInsets.all(3.0),
                    child:   Container(
                      decoration:const  BoxDecoration(
                        color: Colors.white,shape: BoxShape.circle
                      ),
                      child: const CircleAvatar(backgroundColor: Colors.white,radius: 50,
                          backgroundImage: AssetImage('assets/images/d.jpg')),
                    ),
                  ),
                ),
              )),
           InkWell(onTap: (){
            Navigator.pushNamed(context, MyRoutes.homeRoute);
           },
            child: ListTile(
              trailing:const  Icon(CupertinoIcons.arrow_up_right),
              leading: Icon(
                CupertinoIcons.home,
                color: context.primaryColor,
                
              ),
              title: Text(
                'Home',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 15, fontFamily:GoogleFonts.poppins().fontFamily,color: context.primaryColor),
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
          ),
           InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) =>const  Categories())));
            },
            child: ListTile(
              trailing:const  Icon(CupertinoIcons.arrow_up_right),
              leading: Icon(Icons.category_sharp,color: context.primaryColor),
              title: Text(
                'Categories',
                style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 15,color: context.primaryColor),
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
          ),
           InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const Support()));
            },
            child: ListTile(
              trailing:const  Icon(CupertinoIcons.arrow_up_right),
              leading: Icon(
                Icons.support_agent_outlined,
                color: context.primaryColor,
              ),
              title: Text('Support',
                  style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 15,color: context.primaryColor)),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const Settings()));
            },
            child:  ListTile(
              trailing:const  Icon(
                  CupertinoIcons.arrow_up_right), // Use a constant icon here
              leading: Icon(CupertinoIcons.person_crop_circle_fill_badge_exclam,
                  color: context.primaryColor),
              title: Text('Profile',
                  style: TextStyle(fontFamily:GoogleFonts.poppins().fontFamily, fontSize: 15,color: context.primaryColor)),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
