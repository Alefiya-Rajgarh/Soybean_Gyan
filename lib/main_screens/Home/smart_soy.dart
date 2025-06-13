import 'package:flutter/material.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';

class SmartSoy extends StatefulWidget {
  const SmartSoy({super.key});

  @override
  State<SmartSoy> createState() => _SmartSoyState();
}

class _SmartSoyState extends State<SmartSoy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: TranslatedText("Soy Food", style: const TextStyle(
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
                  TranslatedText("This will contain Soy food"),
                ]
            ),
          ),
        )
    );
  }
}