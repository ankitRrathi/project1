import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {


  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var wtcontrolloer = TextEditingController();
  var ftcontroller = TextEditingController();
  var incController =TextEditingController();
  var result = "";
  var bgColor =const Color.fromARGB(255, 140, 184, 221);
  @override
  Widget build(BuildContext context) {
   
  return Scaffold(
    appBar:  AppBar(
        title: const   Text("BMI Calculator"),
        backgroundColor: const Color.fromARGB(255, 5, 130, 111),
        foregroundColor: const Color.fromARGB(255, 223, 94, 8),
        
      ),
      body :
      Container(
        color: bgColor,
        child: Column(
          children: [
            Container(
              height: 70,
              width: double.infinity,
              color: Colors.blue.shade200,
              child:const  Center(child: Text('B M I',style: TextStyle(fontSize: 60,fontFamily: 'ankit',fontWeight: FontWeight.bold,),)),
              
      
            ),
             const SizedBox(height: 70,),
            Row(
              crossAxisAlignment:  CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 12,
                  shadowColor: Colors.deepPurple,
                  child: Container(
                    height: 40, 
                    width: 90,
                    color: const Color.fromARGB(255, 28, 226, 197),
                    child: const  Center(child: Text('W/Kgs',style: TextStyle(fontSize: 20,fontFamily: 'ankit'),)),
                  ),
      
                ),
               
                SizedBox(
                  width: 150,
                  child: TextField(
                    controller: wtcontrolloer,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      label:const Text('Enter Weight in(ft)'),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        )
                        
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:const BorderSide(
                          color: Colors.grey,
                          width: 2,
                        )
                      )
                    ),
                    
                
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              crossAxisAlignment:  CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 12,
                  shadowColor: Colors.deepPurple,
                   
                  child: Container(
                    height: 40, 
                    width: 90,
                    color: const Color.fromARGB(255, 28, 226, 197),
                    child:const  Center(child: Text('H/ft',style: TextStyle(fontSize: 20,fontFamily: 'ankit'),)),
                  ),
      
                ),
               
                SizedBox(
                  width: 150,
                  child: TextField(
                    controller: ftcontroller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      label: const Text('Enter height in(ft)'),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:const BorderSide(
                          color: Colors.black,
                          width: 2,
                        )
                        
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 2,
                        )
                      )
                    ),
                    ),
                    
                
                  ),
                
              ],
            ),
           const  SizedBox(height: 20,),
         
            Row(
              crossAxisAlignment:  CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 12,
                  shadowColor: Colors.deepPurple,
        
                   
                  child: Container(
                    height: 40, 
                    width: 90,
                    color:const  Color.fromARGB(255, 28, 226, 197),
                    child: const Center(child: Text('H/ft',style: TextStyle(fontSize: 20,fontFamily: 'ankit'),)),
                  ),
      
                ),
               
               SizedBox (
                  width: 150,
                  child: TextField(
                    controller: incController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      label:const  Text('Enter height in(inc)'),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:const  BorderSide(
                          color: Colors.black,
                          width: 2,
                        )
                        
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:const  BorderSide(
                          color: Colors.grey,
                          width: 2,
                        )
                      )
                    ),
                    ),
                    
                
                  ),
                
              ],
            ),
            const SizedBox( height: 10,),
            ElevatedButton(
              onPressed: (){
                var iwt= wtcontrolloer.text.toString();
                var ift=ftcontroller.text.toString();
                var inc =incController.text.toString();
                if(iwt!="" && ift!="" && inc!="")
                {
                  var fwt =int.parse(iwt);
                  var fft=int.parse(ift);
                  var finc=int.parse(inc);
                  var tinc =(fft*12)+finc;
                  var tcm=tinc*2.54;
                  var tm=tcm/100;
                  var bmi =fwt/(tm*tm);
                  var msg ="";
                  if(bmi>25)
                  {
                    msg="Unhealthy";
                    bgColor=Colors.red;


                  }
                  else if(bmi<18)
                  {
                    msg = "UnderWeight";
                    bgColor=Colors.orange.shade200;

                  }
                  else  
                  {
                    msg="Healthy";
                    bgColor =const Color.fromARGB(255, 36, 216, 42);
                  }

                
                setState(() {
                    result = "BMI is ${bmi.toStringAsFixed(2)}";
                  });
                }
                else
                {
                  setState(() {
                    result = " Fill all Details !!";
                  });
      
                }
      
      
                
      
      
            
              }, 
            child: const Text('Calcultate')),
           const  SizedBox( height: 10,),
      
      
            Text(result,style:const TextStyle(fontFamily: 'ankit',fontSize: 20),)
              
      
          ],
          
        ),
      ),
      

      
  
        );

  }
}                                                            