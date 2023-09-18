
// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/models/catalog.dart';
import 'package:project1/pages/homepage.dart';
import 'package:project1/pages/settings.dart';
import 'package:project1/widgets/rounded_btn.dart';
import 'package:project1/widgets/item_widget.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
             

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
  var current =0;
  @override
  void initState() {
  
    super.initState();
    loadData();
  }
  loadData() async 
  { 
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString('assets/files/catalog.json');
    var decodedData = jsonDecode(catalogJson);
    var productData =decodedData["products"];
    CatalogModel.items = List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }
  @override

 
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
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
          
        ],
      ),
      drawer: Drawer(
       
      
      
      
        child: ListView(
          padding: EdgeInsets.zero,
          
          children:  [
            DrawerHeader(
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
            InkWell(
              child: ListTile(
                trailing: Icon(CupertinoIcons.arrow_up_right),
                leading: Icon(CupertinoIcons.home,color: Colors.black,),
                title: Text('Home',textAlign: TextAlign.start,
                style: TextStyle(fontSize: 15,fontFamily: 'ankit'),),
              ),
            ),
            Divider(color: Colors.grey,thickness: 2,),
            InkWell(
              child: ListTile(
                trailing: Icon(CupertinoIcons.arrow_up_right),
                leading : Icon(Icons.category_sharp,color:Colors.black),
                title: Text('Categories',style : TextStyle(fontFamily: 'ankit',fontSize: 15),
                
                
                ),
              
              
              ),
            ),
            Divider(color: Colors.grey,thickness: 2,),
            InkWell(
              child: ListTile(
                trailing: Icon(CupertinoIcons.arrow_up_right),
                leading: Icon(Icons.support_agent_outlined,color: Colors.black,),
                title: Text('Support',style: TextStyle(fontFamily: 'ankit',fontSize : 15)),
            
              ),
            ),
            Divider(color: Colors.grey,thickness: 2,),
            InkWell(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
  },
  child: ListTile(
    trailing: Icon(Icons.arrow_forward), // Use a constant icon here
    leading: Icon(Icons.settings_applications_outlined, color: Colors.black),
    title: Text('Settings', style: TextStyle(fontFamily: 'ankit', fontSize: 15)),
  ),
),

             Divider(color: Colors.grey,thickness: 2,),
            
          ],
      
        ),
      ),
      body: Card(
        child:ListView.builder(
          
          itemCount: CatalogModel.items.length,
          itemBuilder: (context,index)
          {
            return ItemWidget(item: CatalogModel.items[index],);
          }
          ),
          ),
          bottomNavigationBar: NavigationBar
      (onDestinationSelected: (int index) {
          setState(() {
            current = index;
          });
        },
        indicatorColor: Colors.grey[800],
        selectedIndex: current,
        destinations: const<Widget>[
        NavigationDestination(selectedIcon: Icon(CupertinoIcons.home),
          icon: Icon(CupertinoIcons.home,color: Colors.black,), label:'Home'),
          NavigationDestination(selectedIcon: Icon(CupertinoIcons.settings_solid),
          icon: Icon(CupertinoIcons.settings_solid,color: Colors.black,), label:'Setting'),
          NavigationDestination(selectedIcon: Icon(CupertinoIcons.profile_circled),
          icon: Icon(CupertinoIcons.profile_circled,color: Colors.black,), label:'Profile'),


      ]
      
      )
          );
  }
}
