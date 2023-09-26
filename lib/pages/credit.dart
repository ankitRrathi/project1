// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/widgets/themes.dart';
class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreditCardWidget(
       cardNumber: "1234 5678 9012 3123",
      expiryDate: "12/23",
      cardHolderName: "Ankit Rathi",
      chipColor: Colors.grey,
      cvvCode: "033",
      showBackView: true,
      cardBgColor: Colors.black,
      padding: 25.0,
      glassmorphismConfig: Glassmorphism(
        blurX: 0.0,
        blurY: 0.0,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Colors.red.withAlpha(20),
            Colors.orange.withAlpha(20),
          ],
          stops: const <double>[
            0.3,
            0,
          ],
        ),

      ),
      backgroundImage: 'assets/images/d.jpg',
    
      labelValidThru: 'VALID\nTHRU',
      bankName: "Union Bank of India",
      obscureCardNumber: true,
      obscureCardCvv: false,
      isHolderNameVisible: true,
      labelCardHolder: 'Ankit Rathi',
      
      height: 175,
      textStyle: TextStyle(color: Mytheme.lightbluishColor,fontFamily: GoogleFonts.poppins().fontFamily),
      width: MediaQuery.of(context).size.width,
      isChipVisible: true,
      isSwipeGestureEnabled: true,
      animationDuration:const  Duration(milliseconds: 1000),
      frontCardBorder: Border.all(color: Colors.black,width: 3,style: BorderStyle.solid),
      backCardBorder: Border.all(color: Colors.black),
      customCardTypeIcons: <CustomCardTypeIcon>[
        CustomCardTypeIcon(
          cardType: CardType.rupay,
          cardImage: Image.asset("assets/images/d.jpg"),
          
        ),
      ],
      onCreditCardWidgetChange: (CreditCardBrand creditCardBrand){
        
      },
    
   
    );
  }
}
