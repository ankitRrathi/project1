// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:project1/spash_screen.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class RoundButton extends StatefulWidget {
//   //const RoundButton({Key? key}) : super(key: key);
  
  

//   @override
//   State<RoundButton> createState() => _RoundButtonState();
// }

// class _RoundButtonState extends State<RoundButton> {
//   var loginController =TextEditingController();
//   var passController =TextEditingController();
//   @override
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:const  Text('Hello Widget'),
//       ),
//      body: Center(
//        child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//            const FaIcon(FontAwesomeIcons.userLock,size: 45,),
//            const SizedBox(height : 20),
//           SizedBox(width: 250,
//             child: TextField(
//               controller : loginController,
//               decoration: InputDecoration(
//               label: const Text(" Login "),
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(21),
//               borderSide: const BorderSide(
//                 color: Colors.black,
//                 width: 3,
//               ),
            
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(21),
//               borderSide:const  BorderSide(
//                 color: Colors.green,
//                 width: 3
//               )
//             )
//             ),

              
//             )),
//            const  SizedBox(height : 20),
//          SizedBox(width : 250,child: TextField(
//             controller: passController,
//             decoration: InputDecoration(
//               label: const Text("Password"),
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(21),
//               borderSide: const BorderSide(
//                 color: Colors.black,
//                 width: 3,
//               ),
            
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(21),
//               borderSide:const  BorderSide(
//                 color: Colors.green,
//                 width: 3
//               )
//             )
//             ),

//           )),
//           const SizedBox(height : 20),

//           ElevatedButton(onPressed: () async {
//             var sharedprefs = await SharedPreferences.getInstance();
//             sharedprefs.setBool(SplashSCState.KEYLOGIN, true);
  
//             Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => RoundButton()));
//           }, 
//           child:const  Text("Login"))
//         ],
//        ),
//      ),

    
//     );
//   }
  
// }
