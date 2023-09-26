import 'package:flutter/material.dart';
import 'package:project1/core/store.dart';
import 'package:project1/models/cart.dart';
import 'package:project1/pages/credit.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Billing extends StatelessWidget {
  const Billing({super.key});

  @override
  Widget build(BuildContext context) {
     final CartModel cart = (VxState.store as MyStore).cart;
    return Scaffold(
      appBar: AppBar(

        backgroundColor: context.canvasColor,
        title: "CheckOut".text
            .xl2
            .textStyle(
                TextStyle(fontFamily: GoogleFonts.poppins().fontFamily))
            .color(context.primaryColor)
            .make(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.payment_outlined),
              title: "Payment Mode".text
                  .textStyle(
                      TextStyle(fontFamily: GoogleFonts.poppins().fontFamily))
                  .color(context.primaryColor)
                  .make(),
              subtitle: "Select Your Preferred Mode of Payment".text
                  .textStyle(context.captionStyle)
                  .color(context.primaryColor)
                  .make(),
            ),
            30.heightBox,
           const  CreditCard(),
           10.heightBox,
          "Or Checkout with".text.medium.textStyle(TextStyle(fontFamily: GoogleFonts.poppins().fontFamily)).color(context.primaryColor).make(),

          15.heightBox,

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton( 
              style: ButtonStyle(elevation: MaterialStateProperty.all(12),
                backgroundColor: MaterialStateProperty.all(Colors.white70),
                maximumSize: MaterialStateProperty.all(const  Size(320, 300),
              ),
            shape: MaterialStateProperty.all( const StadiumBorder())
            ),
              onPressed: (){}, 
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                 Padding(
                  
                  padding:const  EdgeInsets.all(4.0),
                  child: FaIcon(FontAwesomeIcons.paypal,size: 50,color: Colors.blue.shade900,),
                ),
                10.widthBox,
                RichText(text:  TextSpan(
                  children: [

                    TextSpan(
                      text: "Pay",style: TextStyle(color:Colors.blue.shade900,fontSize: 30,fontWeight: FontWeight.bold )
                    ),
                    TextSpan(
                      text: "Pal",style: TextStyle(color: Colors.blue.shade400,fontSize: 30,fontWeight: FontWeight.bold )
                    )

                  ]
                )
                ),
              
              ],

            )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton( 
              style: ButtonStyle(elevation: MaterialStateProperty.all(12),
                backgroundColor: MaterialStateProperty.all(Colors.white70),
                maximumSize: MaterialStateProperty.all(const  Size(320, 300),
              ),
            shape: MaterialStateProperty.all( const StadiumBorder())
            ),
              onPressed: (){}, 
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                 const Padding(
                  
                  padding: EdgeInsets.all(3.0),
                  child: FaIcon(FontAwesomeIcons.apple,size: 50,color: Colors.black,),
                ),
                5.widthBox,
             const Text("Pay",style:TextStyle(color: Colors.black,fontSize: 30 ,))
               
              ],

            )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton( 
              style: ButtonStyle(elevation: MaterialStateProperty.all(12),
                backgroundColor: MaterialStateProperty.all(Colors.white70),
                maximumSize: MaterialStateProperty.all(const  Size(320, 300),
              ),
            shape: MaterialStateProperty.all( const StadiumBorder())
            ),
              onPressed: (){
            
              }, 
              child:   Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
              const   Text("Checkout",style: TextStyle(fontSize:35,color:Colors.black),),
                 VxConsumer(
            builder: ((context, store, status) {
              return "\$${cart.totalPrice}"
                  .text
                  .color(context.primaryColor)
                  .xl4
                  .make();
            }
            ),
            mutations: const {RemoveMutation}
            ),
               
              
              ],

            )
            ),
          ),
          
          ],
        ),
      ),
    );
  }
}
