import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/pages/biiling.dart';
import 'package:project1/pages/login.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/cupertino.dart';
import 'package:project1/widgets/themes.dart';
import 'package:project1/pages/info.dart';
import 'package:project1/pages/settings_page.dart';


class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.canvasColor,
        iconTheme: IconThemeData(color: context.primaryColor),
        //title:
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text(
                    'Profile',
                    style: TextStyle(
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 40,
                        color: context.primaryColor),
                  ),
                ),
              ],
            ),
          ),
          40.heightBox,
          Padding(
            padding: const EdgeInsets.only(left: 110),
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.green,
                        Colors.red,
                        Colors.yellow,
                        Colors.purple
                      ],
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: const CircleAvatar(
                        radius: 65,
                        backgroundImage: AssetImage('assets/images/d.jpg'),
                      ),
                    ),
                  ),
                ).badge(
                    color: Mytheme.lightbluishColor,
                    position: VxBadgePosition.rightBottom,
                    size: 30,
                    optionalWidget: Icon(CupertinoIcons.pencil,
                        color: context.primaryColor)),
              ],
            ),
          ),
          30.heightBox,
          Padding(
            padding: const EdgeInsets.only(left: 120),
            child: Row(
              children: [
                Text(
                  "Ankit Rathi",
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      color: context.primaryColor),
                ),
              ],
            ),
          ),
          15.heightBox,
          Padding(
            padding: const EdgeInsets.only(left: 45),
            child: Row(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shadowColor: context.cardColor,
                        elevation: 10,
                        backgroundColor: Colors.yellow[400],
                        shape: const StadiumBorder(),
                        minimumSize: const Size(300, 45)),
                    onPressed: () {},
                    child: "Edit Profile"
                        .text
                        .xl2
                        .textStyle(TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily))
                        .color(context.primaryColor)
                        .make()),
              ],
            ),
          ),
          19.heightBox,
          ListTile(
            leading: const Icon(
              Icons.settings_rounded,
              size: 24,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 20,
                  color: context.primaryColor),
            ),
            trailing: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Setting2()));
                },
                icon: const Icon(
                  CupertinoIcons.greaterthan_circle_fill,
                  size: 28,
                )),
          ),
          5.heightBox,
          ListTile(
            leading: const Icon(
              Icons.info_rounded,
              size: 24,
            ),
            title: Text(
              'Informations',
              style: TextStyle(
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 20,
                  color: context.primaryColor),
            ),
            trailing: IconButton(
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> const Information()));
                },
                icon: const Icon(
                  CupertinoIcons.greaterthan_circle_fill,
                  size: 28,
                )),
          ),
          5.heightBox,
          ListTile(
            leading: const Icon(
              Icons.payment_rounded,
              size: 24,
            ),
            title: Text(
              'Billing Address',
              style: TextStyle(
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 20,
                  color: context.primaryColor),
            ),
            trailing: IconButton(
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: ((context) => const Billing())));
                },
                icon: const Icon(
                  CupertinoIcons.greaterthan_circle_fill,
                  size: 28,
                )),
          ),
          5.heightBox,
          ListTile(
            leading: const Icon(
              CupertinoIcons.power,
              size: 24,
            ),
            title: Text(
              'Log  Out',
              style: TextStyle(
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 20,
                  color: context.primaryColor),
            ),
            trailing: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Login()));
                },
                icon: const Icon(
                  CupertinoIcons.greaterthan_circle_fill,
                  size: 28,
                )),
          ),
        ],
      ),
    );
  }
}
