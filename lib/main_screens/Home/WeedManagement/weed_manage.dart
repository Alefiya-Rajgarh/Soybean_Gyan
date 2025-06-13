import 'package:flutter/material.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';

class WeedManage extends StatefulWidget {
  const WeedManage({super.key});

  @override
  State<WeedManage> createState() => _WeedManageState();
}

class _WeedManageState extends State<WeedManage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: TranslatedText("Weed Management", style: const TextStyle(
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
              TranslatedText("This will contain Weed management"),
            ]
        )
    ),
      )
    );
  }
}
