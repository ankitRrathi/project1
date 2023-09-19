import 'package:flutter/material.dart'; 

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    var urL = "https://www.nicepng.com/png/full/192-1923042_github-icon-png-github-png.png";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme:const IconThemeData(
          color: Colors.black
        ),
        //title:
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         const Padding(
            padding:  EdgeInsets.only(left: 20.0),
            child:  Text('Profile',style: TextStyle(fontFamily: 'ankit',fontSize: 40,color: Colors.black),),

          ),

         Row(
           children: [
             Padding(
               padding: const EdgeInsets.only(left: 20,top: 20,bottom: 30),
               child: CircleAvatar(radius: 60,backgroundColor: Colors.grey, child: Image.network(urL)),),
               
               
                ],
         ),
         Container(width: 350,height: 60,
         decoration: BoxDecoration(color: Colors.grey,
         borderRadius: BorderRadius.circular(12.0)
         ),
         child: const Center(child: Text(' UserName  : NUll',style: TextStyle(fontFamily: 'ankit',fontSize: 25),)),
         ),
        const Divider(thickness: 4,color: Colors.black,),
         Expanded(child: Padding(
           padding: const EdgeInsets.all(15.0),
           child: Container(
           decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(12.0)
           ),
           child:const  Padding(
             padding:  EdgeInsets.all(8.0),
             child: Text(style: TextStyle(fontSize: 20,fontFamily: 'ankit'),'Sadipscing lorem duo amet et et labore. Ipsum eirmod sed dolore rebum, voluptua vero et sed aliquyam sed ipsum ipsum gubergren. Amet et stet et clita at, takimata amet vero erat eos. Labore erat dolor diam rebum, dolor eos rebum kasd sea, stet gubergren sed ipsum ipsum nonumy amet ipsum at. Et et elitr diam nonumy eos magna sadipscing nonumy. Magna sed voluptua consetetur justo vero clita eirmod stet no, diam erat aliquyam takimata eirmod. Rebum dolor sit ipsum ipsum nonumy amet vero. Diam aliquyam diam ut elitr duo tempor et ut. Amet et ipsum amet ut ut et. Labore.'),
           ),
           ),
         ))
        ],
      ),
    );
  }
}