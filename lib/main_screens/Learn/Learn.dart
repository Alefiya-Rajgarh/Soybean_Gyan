import 'package:flutter/material.dart';

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
      Text("This will include: "),
      Text("Video Gallery "),
      Text("Farmer Advisory "),
      Text("pre-disposing factors "),
      Text("Good Agri Practices "),
      ]
      )
    );
  }
}
