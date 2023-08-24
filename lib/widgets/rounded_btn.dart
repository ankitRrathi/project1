// import 'package:flutter/material.dart';
// import 'package:project1/pages/homepage.dart';
// class  RoundButton extends StatefulWidget {
//   const RoundButton({super.key});

//   @override
//   State<RoundButton> createState() => _RoundButtonState();
// }

// class _RoundButtonState extends State<RoundButton> {
//   @override
//   Widget build(BuildContext context) {
//     var nameController =TextEditingController();
    
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               width: 300,
//               child: TextField(
//                 controller: nameController,
//               )),
//             ElevatedButton(onPressed: (){
      
//               Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(nameController.text.toString())));
              
      
//             }, child:const  Text('Login'))
      
      
//           ],
//         ),
//       ),


//     );
   
    
      
//   }
// }