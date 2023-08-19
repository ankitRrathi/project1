import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

      class Homepage extends StatefulWidget {
        const Homepage({super.key});
      
        @override
        State<Homepage> createState() => _HomepageState();
      }
      
      class _HomepageState extends State<Homepage> {
        @override
        Widget build(BuildContext context) {
          return Scaffold(
            body : Center 
          (child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               const Text('Select Date ',style:TextStyle(fontSize: 31,fontFamily: 'ankit')),
              ElevatedButton(onPressed: () async 
                { DateTime?  datepicked = await  showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2021), lastDate: DateTime(2024));
                  if( datepicked !=null)
              {
                print("Time Selected : ${datepicked.day}- ${datepicked.month} - ${datepicked.year}");
              };

                }
              ,   child:  const Text('Date'))
            
            ],
          ))



          );
          

        }
      }                                                               