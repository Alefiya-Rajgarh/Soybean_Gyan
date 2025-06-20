import 'package:flutter/material.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';

class TypesOfWeeds extends StatelessWidget {
  TypesOfWeeds({super.key});

  final List<Map<String, String>> weedList = [
    {
      'name': "Commelina Benghalensis (Bokna)",
      'image': "assets/images/sample image.jpg",
    },
    {
      'name': "Cyanotis Axillaris (Diwalia)",
      'image': "assets/images/sample image.jpg",
    },
    {
      'name': "Cyperus Rotundus (Motha)",
      'image': "assets/images/sample image.jpg",
    },
    {
      'name': "Digera Arvensis (Phoolni)",
      'image': "assets/images/sample image.jpg",
    },
    {
      'name': "Echinochloa Cru-Sgalli (Sanwa)",
      'image': "assets/images/sample image.jpg",
    },
    {
      'name': "Euphorbia Geniculata (Dudhi)",
      'image': "assets/images/sample image.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TranslatedText(
          "Types Of Weed",
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
          itemCount: weedList.length,
          itemBuilder: (context, index) {
            final weed = weedList[index];
            return Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(15),
                    ),
                    child: Image.asset(
                      weed['image']!,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TranslatedText(
                      weed['name']!,
                      style: TextStyle(
                        color: Color(0xFF156B34),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Gilroy Heading",
                        fontSize: 19,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
