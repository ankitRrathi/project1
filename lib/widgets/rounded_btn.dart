import 'package:flutter/material.dart';
class  RoundButton extends StatelessWidget {
  //const RoundButton({super.key});
  final String btname;
  final Icon? icon;
  final Color? bgcolor;
  final TextStyle? textstyle;
  final VoidCallback? callback;
   const RoundButton
  (
    {
      required this.btname,
      this.icon,
      this.bgcolor=Colors.amberAccent,
      this.textstyle,
      this.callback,
    }
  );


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: 
      (){
        callback!();


      }
      , child:icon != null ? Row(
        children: [
          icon!,
          Container(width: 10),
          Text(btname,style: textstyle)
        ],

      )
      : Text(btname,style: textstyle,),
      style: ElevatedButton.styleFrom(
        backgroundColor: bgcolor,
        shadowColor: Colors.red,
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(35)
          )
        )
      ),
      );
  }
}