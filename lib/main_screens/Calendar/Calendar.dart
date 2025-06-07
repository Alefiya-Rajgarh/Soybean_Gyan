import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child:Column(
            children: [
              SizedBox(height: 250,),
              Text("Weather forecast and other Calender "),
              Text("related things will come here "),
         ]
        )
    );
  }
}
