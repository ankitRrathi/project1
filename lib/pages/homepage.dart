
import 'package:flutter/material.dart';
//import 'package:project1/widgets/rounded_btn.dart';
 class Homepage extends StatefulWidget {
   const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with SingleTickerProviderStateMixin{
  
  @override
   Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Spacer(),
            SingleChoice(),
             SizedBox(height: 20), 
            MultipleChoice(),
             Spacer(),
          ],
        ),
      ),

    );
    
  }
}
  enum Calendar {day,week,month,year}

class SingleChoice extends StatefulWidget {
  const SingleChoice({super.key});

  @override
  State<SingleChoice> createState() => _SingleChoiceState();
}

class _SingleChoiceState extends State<SingleChoice> {
  Calendar calendarView =Calendar.day;
  @override
  Widget build(BuildContext context) {
    return SegmentedButton(
      segments: const <ButtonSegment<Calendar>>
      [
        ButtonSegment<Calendar>(
          value: Calendar.day,
          label: Text('Day'),
          icon: Icon(Icons.calendar_view_day_rounded)),
          ButtonSegment(value: Calendar.week,
          label: Text('Week'),
          icon: Icon(Icons.calendar_view_week_rounded)
          ),
          ButtonSegment(value: Calendar.month,
          label: Text('Month'),
          icon: Icon(Icons.calendar_view_month_rounded)
          ),
          ButtonSegment(value: Calendar.year,
          label: Text('Year'),
          icon:Icon(Icons.calendar_view_day_rounded)
          )
      ], 
      selected:<Calendar>{calendarView},
      onSelectionChanged: (Set newSelection)
      {
        setState((){
          calendarView= newSelection.first;
        });
      }
      );
  }
}
enum Sizes {extraSmall,small,medium,large,extraLarge}
class MultipleChoice extends StatefulWidget {
  const MultipleChoice({super.key});

  @override
  State<MultipleChoice> createState() => _MultipleChoiceState();
}

class _MultipleChoiceState extends State<MultipleChoice> {
  Set selection ={Sizes.large,Sizes.extraLarge};
  @override
  Widget build(BuildContext context) {
    return SegmentedButton(
      segments: const <ButtonSegment<Sizes>>
      [
        ButtonSegment(value: Sizes.extraSmall, label: Text('xS')),
        ButtonSegment(value :Sizes.small,label: Text('S')),
        ButtonSegment(value:Sizes.medium,label : Text('M')),
        ButtonSegment(value: Sizes.large,label : Text('L')),
        ButtonSegment(value: Sizes.extraSmall,label:Text('XL'))
      ], 
      selected: selection,
      onSelectionChanged: ( Set newSelection ){
        setState(() {
          selection =newSelection;
        }
        );
       
      },
      multiSelectionEnabled: true,
      );
  }
}