import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/pages/homepage.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey1 = GlobalKey<FormState>();
    final formkey2 =GlobalKey<FormState>();
    return Scaffold(

      backgroundColor: context.canvasColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/abc.png'),
            ),
      
            Form(
              key: formkey1, 
              child: TextFormField(
                style: TextStyle(color: context.primaryColor,fontFamily: GoogleFonts.poppins().fontFamily),
                
                validator: ( String? value) {
                  if(value==null || value.isEmpty || !value.contains('@'))
                  {
                    return ('Please Enter valid username ');
                  }
                  return null;
                },
                decoration: InputDecoration(
                  prefixIcon:const  Icon(Icons.email),
                  prefixIconColor: context.primaryColor,
                  label: "Login".text.textStyle(TextStyle(fontFamily: GoogleFonts.poppins().fontFamily)).color(context.primaryColor).make(),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                     borderSide: BorderSide(
                      color: context.primaryColor,
                      width: 2,
            
                    )
                  ),
                  
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: context.primaryColor,
                      width: 2
            
                    )
                  )
                ),
                
              ).p32(),
            ),
            Form(
              key: formkey2,
              
              child: TextFormField(
                style : TextStyle(color :context.primaryColor),
                validator: (value){
                  if(value==null || value.isEmpty )
                  {
                    return('Password cannot be empty !');

                  }
                  else if(value.length<6)
                  {
                    return('Password Cannot be less Than 6');
                  }
                  return null;
                },
                obscureText: true,
                obscuringCharacter: '*',            
                decoration: InputDecoration(
                  prefixIcon:const  Icon(Icons.remove_red_eye_rounded),
                  prefixIconColor: context.primaryColor,
                  label: "Password".text.textStyle(TextStyle(color: context.primaryColor, fontFamily: GoogleFonts.poppins().fontFamily)).color(context.primaryColor).make(),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                     borderSide: BorderSide(
                      color: context.primaryColor,
                      width: 2,
                  
                    )
                  ),
                  
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: context.primaryColor,
                      width: 2
                  
                    )
                  )
                ),
                
                
              ).px32(),
            ),
            ElevatedButton(
              onPressed: (){
                if(formkey1.currentState!.validate() && formkey2.currentState!.validate())
                {
                 
                  Navigator.push(context, MaterialPageRoute(builder: ((context) =>const  Homepage())));
                  
                }

      
              }, child: "    Login    ".text.textStyle(TextStyle(fontFamily:GoogleFonts.poppins().fontFamily)).make()).p12().filter(filter: VxColorFilter.milk),
      
          ],
        ),
      ),
    );
  }
}