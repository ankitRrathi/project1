import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    var urL ="assets/images/d.jpg";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.canvasColor,
        iconTheme:  IconThemeData(color: context.primaryColor),
        //title:
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Padding(
            padding:const  EdgeInsets.only(left: 20.0),
            child: Text(
              'Profile',
              style: TextStyle(
                  fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 40,color: context.primaryColor),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, bottom: 30),
                child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage(urL),
                    ),
              ),
            ],
          ),
          Container(
            width: 350,
            height: 60,
            decoration: BoxDecoration(
                color: context.canvasColor, borderRadius: BorderRadius.circular(12.0)),
            child:  Center(
                child: Text(
              ' User  : Ankit Rathi',
              style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 25,color: context.primaryColor),
            )),
          ),
          const Divider(
            thickness: 4,
            color: Colors.black,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                  color: context.canvasColor,
                  borderRadius: BorderRadius.circular(12.0)),
              child:  Padding(
                padding:const  EdgeInsets.all(8.0),
                child: Text(
                    style: TextStyle(fontSize: 20, fontFamily: GoogleFonts.poppins().fontFamily,color: context.primaryColor),
                    'Sadipscing lorem duo amet et et labore. Ipsum eirmod sed dolore rebum, voluptua vero et sed aliquyam sed ipsum ipsum gubergren. Amet et stet et clita at, takimata amet vero erat eos. Labore erat dolor diam rebum, dolor eos rebum kasd sea, stet gubergren sed ipsum ipsum nonumy amet ipsum at. Et et elitr diam nonumy eos magna sadipscing nonumy. Magna sed voluptua consetetur justo vero clita eirmod stet no, diam erat aliquyam takimata eirmod. Rebum dolor sit ipsum ipsum nonumy amet vero. Diam aliquyam diam ut elitr duo tempor et ut. Amet et ipsum amet ut ut et. Labore.'),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
