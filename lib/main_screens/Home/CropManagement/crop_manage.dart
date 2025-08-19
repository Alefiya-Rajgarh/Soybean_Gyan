import 'package:flutter/material.dart';
import 'crop_data.dart';
import 'crop_details_screen.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';
import 'SelectionOfVarieties.dart';

class CropManage extends StatefulWidget {
  const CropManage({super.key});

  @override
  State<CropManage> createState() => _CropMangeState();
}

class _CropMangeState extends State<CropManage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: TranslatedText(
          "Crop Management",
          style: const TextStyle(
            color: Color(0xFF156B34),
            fontWeight: FontWeight.w900,
            fontFamily: "Gilroy Heading",
            fontSize: 26,
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
          itemCount: allCrops.length,
          itemBuilder: (context, index) {
            final crop = allCrops[index];
            return InkWell(
              onTap: () {
                if (index == 4) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SowingTechniquesScreen(crop: crop),
                    ),
                  );
                } else if (index == 3) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => SelectionOfVarietiesPage(crop: crop),
                    ),
                  );
                } else if (index == 8) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => Intercropping(crop: crop),
                    ),
                  );
                } else
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CropDetailscreen(crop: crop),
                    ),
                  );
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(crop.image_path),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5),
                      BlendMode.darken,
                    ),
                  ),
                ),
                alignment: Alignment.center,
                child: TranslatedText(
                  crop.name,
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
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

class SowingTechniquesScreen extends StatelessWidget {
  final Crop crop;
  SowingTechniquesScreen({super.key, required this.crop});

  final List<Map<String, String>> sowingteq = [
    {'name': "Flat Sowing", 'image': "assets/images/Crop manage/flat.png"},
    {
      'name': "Broad Bed Furrow (BBF)",
      'image': "assets/images/Crop manage/bbf.png",
    },
    {
      'name': "FIRB (Furrow Irrigated Raised Bed)",
      'image': "assets/images/Crop manage/firb.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TranslatedText(
          crop.name,
          style: const TextStyle(
            color: Color(0xFF156B34),
            fontWeight: FontWeight.w900,
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
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 4),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: TranslatedText(
                  "Looking to the prevailing climatic aberrations and erratic rainfall, following methods can be used to mitigate the adverse climate.",
                  style: TextStyle(
                    color: Color(0xFF156B34),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Gilroy Heading",
                    fontSize: 21,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(15),
                itemCount: sowingteq.length,
                itemBuilder: (context, index) {
                  final des = crop.details[index];
                  final img = sowingteq[index];
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
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
                            img['image']!,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TranslatedText(
                            img['name']!,
                            style: TextStyle(
                              color: Color(0xFF156B34),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Gilroy Heading",
                              fontSize: 25,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Flexible(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.0,
                                vertical: 6.0,
                              ),
                              child: TranslatedText(
                                des.description!,
                                style: TextStyle(
                                  color: Color(0xFF156B34),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Gilroy Heading",
                                  fontSize: 22,
                                ),
                                textAlign: TextAlign.center,
                                softWrap: true,
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Intercropping extends StatelessWidget {
  final Crop crop;
  const Intercropping({super.key, required this.crop});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: TranslatedText(
          crop.name,
          style: const TextStyle(
            color: Color(0xFF156B34),
            fontWeight: FontWeight.w900,
            fontFamily: "Gilroy Heading",
            fontSize: 25,
          ),
        ),
        backgroundColor: Color(0xFFE8F5E9),
      ),
      backgroundColor: Colors.green.shade50,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...crop.details
                .map(
                  (info) => Container(
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
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 5,
                          offset: Offset(2, 4),
                        ),
                      ],
                    ),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TranslatedText(
                            info.title,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              fontFamily: "Gilroy Regular",
                              color: Color(0xFF00695C),
                            ),
                          ),
                          const SizedBox(height: 8),
                          TranslatedText(
                            info.description,
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Gilroy Regular",
                              color: Color(0xFF00796B),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
            SizedBox(height: screenHeight * 0.016),

            ExpansionTile(
              title: TranslatedText(
                "Table of Remunerative cropping systems for different zones ",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Gilroy Regular",
                  color: Color(0xFF00695C),
                ),
                textAlign: TextAlign.left,
              ),
              children: [
                Image.asset(
                  'assets/images/Crop manage/intertable.png',
                  width: 700,
                ),
              ],
            ),
            ExpansionTile(
              title: TranslatedText(
                "Images of Soybean based intrercropping systms popular in India ",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Gilroy Regular",
                  color: Color(0xFF00695C),
                ),
                textAlign: TextAlign.left,
              ),
              children: [
                Image.asset(
                  'assets/images/Crop manage/interimage.png',
                  width: 700,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
