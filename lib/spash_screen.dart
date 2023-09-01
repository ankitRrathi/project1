
// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:project1/widgets/rounded_btn.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:project1/pages/homepage.dart';


// class SplashSC extends StatefulWidget {
//   @override
//   State<SplashSC> createState() => SplashSCState();
// }

// class SplashSCState extends State<SplashSC> {
//   static const String keylogin ="login";

//   //const SplashSC({super.key});
//   @override
//   void initState() {
   
//     super.initState();
//     wheretogo();
//   }

  
//   @override
//   Widget build(BuildContext context) {
//    return Scaffold(
//     body: Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(colors: [Colors.yellow,Colors.orange.shade100,Colors.orange.shade300,Colors.orange])
//       ),
//       child: const Center(child: FaIcon(FontAwesomeIcons.amazon,size: 400,color: Colors.black,)),
//     ),
//    );
//   }
//   void wheretogo() async
//   {
//     var prefs =await SharedPreferences.getInstance();
//     var islogin = prefs.getBool(keylogin);
//      Timer( const Duration(seconds: 4), () { 
//      if(islogin!=null)
//      {
//       if(islogin)
//       {
//          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Homepage()));
//       }
//       else 
//       {
//          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const RoundButton(),));
//       }
      
//      }
//      else
//       {
//          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const RoundButton(),));
//       }
//      });
//   }
  
  
// }
