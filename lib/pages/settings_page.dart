import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Setting2 extends StatefulWidget {
  const Setting2({Key? key}) : super(key: key);

  @override
  State<Setting2> createState() => _Setting2State();
}

class _Setting2State extends State<Setting2> {
  bool darkmode = true;
  bool fingerprint = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.canvasColor,
        title: "Settings".text.xl3.color(context.primaryColor).make(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          " General Settings"
              .text
              .color(context.primaryColor)
              .xl2
              .make()
              .p(10)
              .py12(),
          10.heightBox,
          InkWell(
            onTap: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: context.canvasColor,
              content: "Only English is available right now"
                  .text
                  .xl
                  .color(context.primaryColor)
                  .make(),
              action: SnackBarAction(
                  textColor: context.primaryColor,
                  backgroundColor: context.canvasColor,
                  label: 'Back',
                  onPressed: () {}),
            )),
            child: ListTile(
              leading: const Icon(CupertinoIcons.globe),
              title: "Language"
                  .text
                  .textStyle(
                      TextStyle(fontFamily: GoogleFonts.poppins().fontFamily))
                  .xl
                  .color(context.primaryColor)
                  .make(),
              subtitle:
                  "English".text.medium.color(context.primaryColor).make(),
            ),
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.moon),
            title: "Dark Mode"
                .text
                .textStyle(
                    TextStyle(fontFamily: GoogleFonts.poppins().fontFamily))
                .xl
                .color(context.primaryColor)
                .make(),
            trailing: Switch(
              value: darkmode,
              onChanged: (newValue) {
                setState(() {
                  darkmode = newValue;
                });
              },
            ),
          ),
          10.heightBox,
          "Privacy and Security"
              .text
              .xl2
              .textStyle(
                  TextStyle(fontFamily: GoogleFonts.poppins().fontFamily))
              .color(context.primaryColor)
              .make(),
          10.heightBox,
          ListTile(
              title: "Peoples"
                  .text
                  .textStyle(
                      TextStyle(fontFamily: GoogleFonts.poppins().fontFamily))
                  .xl
                  .color(context.primaryColor)
                  .make(),
              leading: const Icon(CupertinoIcons.profile_circled),
              trailing: IconButton(
                icon: const Icon(
                  CupertinoIcons.greaterthan_circle_fill,
                  size: 30,
                ),
                onPressed: () {},
              )),
          ListTile(
            title: "Lock App In Background"
                .text
                .textStyle(
                    TextStyle(fontFamily: GoogleFonts.poppins().fontFamily))
                .xl
                .color(context.primaryColor)
                .make(),
            leading: const Icon(CupertinoIcons.lock_circle_fill),
            trailing: Switch(
              value:
                  fingerprint, // Set the initial value to your 'fingerprint' variable
              onChanged: (newValue1) {
                setState(() {
                  fingerprint = newValue1;
                });
              },
            ),
          ),
          ListTile(
              title: "Change Password"
                  .text
                  .textStyle(
                      TextStyle(fontFamily: GoogleFonts.poppins().fontFamily))
                  .xl
                  .color(context.primaryColor)
                  .make(),
              leading: const Icon(Icons.lock),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.greaterthan_circle_fill,
                    size: 30,
                  ))),
        ],
      ),
    );
  }
}
