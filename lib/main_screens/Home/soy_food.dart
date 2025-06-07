import 'package:flutter/material.dart';

class SoyFood extends StatefulWidget {
  const SoyFood({super.key});

  @override
  State<SoyFood> createState() => _SoyFoodState();
}

class _SoyFoodState extends State<SoyFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Soy Food", style: const TextStyle(
            color: Color(0xFF156B34),
            fontWeight: FontWeight.w700,
            fontFamily: "Gilroy Heading",
            fontSize: 25,
          ),
          ),
          backgroundColor: Color(0xFFE8F5E9)
      ),
      body:  Container(
      decoration: BoxDecoration(
      gradient: LinearGradient(
      colors: [
      Colors.white,
      Colors.green.shade50,
      Colors.green.shade100,
      ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    ),
    ),
    child:
      Center(
        child:Column(
            children: [
              SizedBox(height: 250,),
              Text("This will contain Soy food"),
            ]
        ),
    ),
      )
    );
  }
}
