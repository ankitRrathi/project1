
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';


class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: context.canvasColor,
        iconTheme: IconThemeData(
          color: context.primaryColor,
        ),
        title: "Categories".text.textStyle(TextStyle(fontFamily: GoogleFonts.poppins().fontFamily)).color(context.primaryColor).make(),
        
        centerTitle: true,
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: [
          InkWell(onTap: (){},
            child:  CircleAvatar(radius: 50,backgroundColor:context.primaryColor,
             child: Text('Apple',style: TextStyle(color: context.cardColor,fontSize: 25),),
            ).p16(),
          ),
           InkWell(onTap: (){},
            child:  CircleAvatar(radius: 50,
              backgroundColor: context.primaryColor,
              child: Text('MacBook',style: TextStyle(color: context.cardColor,fontSize: 20),),
            ).p16(),
          ),
           InkWell(onTap: (){},
            child:  CircleAvatar(radius: 50,
              backgroundColor: context.primaryColor,
              child: Text('Ipad',style: TextStyle(color: context.cardColor,fontSize: 25),),
             
            ).p16(),
          ), InkWell(onTap: (){},
            child:  CircleAvatar(radius: 50,
              backgroundColor: context.primaryColor,
              child: Text('Android',style: TextStyle(color: context.cardColor,fontSize: 20),),
             
            ).p16(),
            
          ),
          InkWell(onTap: (){},
            child:  CircleAvatar(radius: 50,
              backgroundColor: context.primaryColor,
              child: Text('TeleVision',style: TextStyle(color: context.cardColor,fontSize: 18),),
             
            ).p16(),
          ),
        ],
      )
    );
  }
}