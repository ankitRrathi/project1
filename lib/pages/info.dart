import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';



class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        title: "Information".text.xl2.textStyle(TextStyle(fontFamily: GoogleFonts.poppins().fontFamily)).make(),
        centerTitle: true,
        backgroundColor: context.canvasColor,
        iconTheme: IconThemeData(
          color: context.primaryColor
        ),
        actions: const [
          Icon(Icons.fiber_manual_record),
        ],

      ),
      body: Column(
        children: [
          "This app is just a prototype only for the practice purpose and it has nohing to do with real life usage and it it not made for any kind of real life usage and any usage of this application without permision is strictly restricted and strict actions wii be taken against the person who made it public and use this .".text.medium.color(context.primaryColor).make().p12(),
          20.heightBox,
        ''' Please read all the terms and conditions and privacy policy of this application and please do not use this application for any kind of usage and to to provide services
        '''.text.color(context.primaryColor).medium.make().p12(),
        20.heightBox,
        ''' This is to inform you that this is made  for the user who is learning flutter and want to try  how widgeets are used and and how to use where which way the are used and how you can improve your effectivity and your effectivity and effeciency and how can you increase your knowledge and increase your chances to get job and 


        '''.text.medium.color(context.primaryColor).make().p12(),

        10.heightBox,
        "Tage noch menge steigt ersten wie und widerklang dunst jugendlich, mein bringt einer herzen unbestimmten ergreift. Irren ertönt freundschaft ich widerklang den. Ist folgt an noch stunden entwöhntes gestalten wieder, aus meinem noch und schwebet selbst lispelnd, unbestimmten schmerz der schauer der strenge ist. Erste selbst sage ich verklungen beifall manche euch. Des einer lebt alten ihr. Und umwittert es.".text.medium.color(context.primaryColor).make().p12()

        ],
      ),
    );
  }
}