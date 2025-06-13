import 'package:flutter/material.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';

class DiseaseManage extends StatefulWidget {
  const DiseaseManage({super.key});

  @override
  State<DiseaseManage> createState() => _DiseaseManageState();
}

class _DiseaseManageState extends State<DiseaseManage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TranslatedText(
          "Disease Management",
          style: const TextStyle(
            color: Color(0xFF156B34),
            fontWeight: FontWeight.w700,
            fontFamily: "Gilroy Heading",
            fontSize: 25,
          ),
        ),
        backgroundColor: Color(0xFFE8F5E9),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.green.shade50, Colors.green.shade100],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 250),
              TranslatedText("This will contain Disease management"),
            ],
          ),
        ),
      ),
    );
  }
}
