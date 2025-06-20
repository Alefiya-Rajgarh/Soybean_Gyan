import 'package:flutter/material.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';
import 'disease_data.dart';
import 'bacterial_disease.dart';
import 'fungal_disease.dart';
import 'viral_disease.dart';

class DiseaseManage extends StatefulWidget {
  const DiseaseManage({super.key});

  @override
  State<DiseaseManage> createState() => _DiseaseManageState();
}

class _DiseaseManageState extends State<DiseaseManage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
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
        child: ListView.builder(
          padding: EdgeInsets.all(15),
          itemCount: diseaseTypes.length,
          itemBuilder: (context, index) {
            final diseaseType = diseaseTypes[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      if (index == 0)
                        return BacterialDisease();
                      else if (index == 1)
                        return fungalDisease();
                      else if (index == 2)
                        return viralDisease();
                      else
                        return Placeholder();
                    },
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(diseaseType.image_path),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3),
                      BlendMode.darken,
                    ),
                  ),
                ),
                alignment: Alignment.center,
                child: TranslatedText(
                  diseaseType.name,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Gilroy Heading",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

