import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mytheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData(

    
    cardColor: Colors.white,
      canvasColor: creamecolor,
       primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      textTheme: Theme.of(context).textTheme,
      primaryColor: darkbluishColor,
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
      
      cardColor: Colors.black,
      canvasColor: darkcreamecolor,
      primaryColor: Colors.white,

      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: lightbluishColor
      ),
       primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      textTheme: Theme.of(context).textTheme,
    
      appBarTheme:const AppBarTheme(
        
        color: Colors.white,
        elevation: 0,
    
        actionsIconTheme: IconThemeData(
          color: Colors.white,
        ),
        iconTheme: IconThemeData(color: Colors.white
        )
      

      )
    );
    static Color creamecolor = const Color(0xfff5f5f5);
    static Color darkcreamecolor = Vx.gray900;
    static Color darkbluishColor =const  Color(0xff403b58);
    static Color lightbluishColor =Vx.indigo500;
}