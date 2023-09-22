import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';


class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.canvasColor,
        iconTheme: IconThemeData(color: context.primaryColor),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          "Contact Us".text.xl4.textStyle(TextStyle(fontFamily: GoogleFonts.poppins().fontFamily)).color(context.primaryColor).make().p16(),
          100.heightBox,
          Row(
            children: [
             const  Icon(CupertinoIcons.phone,size: 32,).px32(),
              "+91 -123456".text.xl4.color(context.primaryColor).make()
            ],
          ),
          20.heightBox,
           Row(
            children: [
             const  Icon(Icons.email_sharp,size: 32,).px32(),
              "ar487084@gmail.com".text.xl2.color(context.primaryColor).make()
            ],
          ),
           20.heightBox,
         
          Row(
            children: [
             const  Icon(Icons.place,size: 32,).px32(),
              "Vill -Johra,Mansurpur".text.xl2.color(context.primaryColor).make()
            ],
          ),
               32.heightBox,
               Container(color: Colors.red,
                child: "Terms and Condition".text.color(context.primaryColor).xl.make()),
                 10.heightBox,


            Row(
              children: [
                
                Container(
                  width: 365,
                  height: 250,

                  color: context.canvasColor,
                  child: "Known sacredir haheartless true loved crime could the his thee, sacredir haheartless true loved crime could the his thee sacredir haheartless true loved crime could the his thee sacredir haheartless true loved crime could the his thee sacredir haheartless true loved crime could the his thee sacredir haheartless true loved crime could the his thee sacredir haheartless true loved crime could the his thee sacredir haheartless true loved crime could ther haheartless true loved crime could the hr haheartless true loved crime could the hr haheartless true loved crime could the hr haheartless true loved crime could the hr haheartless true loved crime could the hr haheartless true loved crime could the hr haheartless true loved crime could the hr haheartless true loved crime could the hr haheartless true loved crime could the hr haheartless true loved crime could the hr haheartless true loved crime could the hr haheartless true loved crime could the hr haheartless true loved crime could the hr haheartless true loved crime could the hr haheartless true loved crime could the h his thee but".text.color(context.primaryColor).make(),
                  
                ).p12()
              ],
            )



          
         
        
       

        ],
      
        
      ),
    
    );

  }
}