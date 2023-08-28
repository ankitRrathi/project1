// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:project1/pages/homepage.dart';
// import 'package:project1/widgets/rounded_btn.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SplashSC extends StatefulWidget {
//   const SplashSC({super.key});

//   @override
//   State<SplashSC> createState() => SplashSCState();
// }

// class SplashSCState extends State<SplashSC> {
//   static const String KEYLOGIN ="login";
//   @override
//   void initState() {
    
//     super.initState();
//    wheretogo();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:  Center(
//         child: Container(
//           width: double.infinity,
//           height: double.infinity,
//           color: Colors.blue.shade400,
//            child:const Center(child: FaIcon(FontAwesomeIcons.facebook,size: 200,)),
//         ),
//       ),
//     );
//   }
//   void wheretogo()async {
//     var sharedpref =await SharedPreferences.getInstance();
//      var islogin = sharedpref.getBool(KEYLOGIN);
//        Timer  ( const Duration(seconds: 3), () 
//     {if(islogin!=null){
//       if(islogin){
//         Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => Homepage()));
//       }
//       else
//       {Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => RoundButton(),));

//       }

//     }
//     else{
//       Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => RoundButton()));
//     }
    
    
//   }
//   );

//   }
// }

