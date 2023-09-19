import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      textTheme: Theme.of(context).textTheme,
      appBarTheme:const AppBarTheme(
        
        color: Colors.white,
        elevation: 0,
    
        actionsIconTheme: IconThemeData(
          color: Colors.black,
        ),
        iconTheme: IconThemeData(color: Colors.black
        )
        
        
        
      )
    );
    static ThemeData darkTheme(BuildContext context)=> ThemeData(
      brightness: Brightness.dark,

    );
    static Color creamecolor = const Color(0xfff5f5f5);
    static Color darkbluishColor =const  Color(0xff403b58);
}