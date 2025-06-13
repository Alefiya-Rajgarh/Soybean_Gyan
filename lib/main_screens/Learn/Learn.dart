import 'package:flutter/material.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';

class Learn extends StatefulWidget {
  const Learn({super.key});

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
    children: [
      SizedBox(height: 250,),
      TranslatedText("This will include: "),
      TranslatedText("Video Gallery "),
      TranslatedText("Farmer Advisory "),
      TranslatedText("pre-disposing factors "),
      TranslatedText("Good Agri Practices "),
      ]
      )
    );
  }
}
