import 'package:flutter/material.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';

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
              TranslatedText("Weather forecast and other Calender "),
              TranslatedText("related things will come here "),
         ]
        )
    );
  }
}
