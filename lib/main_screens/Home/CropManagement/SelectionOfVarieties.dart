import 'package:flutter/material.dart';
import 'crop_data.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';

class SelectionOfVarietiesPage extends StatelessWidget {
  final Crop crop;
  SelectionOfVarietiesPage({super.key, required this.crop});

  final List<Map<String, String>> improvedVarieties = [
    {"image": "assets/images/Crop manage/nrc127.jpg", "label": "NRC 127"},
    {"image": "assets/images/Crop manage/nrc 128.png", "label": "NRC 128"},
    {"image": "assets/images/Crop manage/nrc 130.png", "label": "NRC 130"},
    {"image": "assets/images/Crop manage/nrc 132.png", "label": "NRC 132"},
    {"image": "assets/images/Crop manage/nrc136.png", "label": "NRC 136"},
    {"image": "assets/images/Crop manage/NRCSL 1.png", "label": "NRCSL 1"},
    {"image": "assets/images/Crop manage/nrc 138.png", "label": "NRC 138"},
    {"image": "assets/images/Crop manage/nrc 147.png", "label": "NRC 147"},
    {"image": "assets/images/Crop manage/AMS-MB-5-18.png", "label": "AMS-MB-5-18"},
    {"image": "assets/images/Crop manage/AMS 100-39.png", "label": "AMS 100-39"},
    {"image": "assets/images/Crop manage/MAUS 725.png", "label": "MAUS 725"},
    {"image": "assets/images/Crop manage/NRC 150.png", "label": "NRC 150"},
    {"image": "assets/images/Crop manage/SL 955.png", "label": "SL 955"},
    {"image": "assets/images/Crop manage/DSb 28-3.png", "label": "DSb 28-3"},
    {"image": "assets/images/Crop manage/kds753.png", "label": "KDS 753"},
    {"image": "assets/images/Crop manage/RVS 2001-4.png", "label": "RVS 2001-4"},
    {"image": "assets/images/Crop manage/rvs 18.png", "label": "RVS 18"},
    {"image": "assets/images/Crop manage/JS 20-29.png", "label": "JS 20-29"},
    {"image": "assets/images/Crop manage/JS 21-72.png", "label": "JS 21-72"},
    {"image": "assets/images/Crop manage/NRC 181.png", "label": "NRC 181"},
    {"image": "assets/images/Crop manage/SL 955.png", "label": "SL 955"},
    {"image": "assets/images/Crop manage/JS 20-35.png", "label": "JS 20-35"},

  ];

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

      body: SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.green.shade50,
                  //Colors.green.shade100,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
    padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Theme(
        data: Theme.of(
        context,
        ).copyWith(dividerColor: Colors.transparent),
            child:
            ExpansionTile(
              title: TranslatedText(
                "Information of Selection of varieties",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Gilroy Regular",
                  color: Color(0xFF00695C),
                ),
                textAlign: TextAlign.left,
              ),
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
    ],
    ),
        ),
            SizedBox(height: screenHeight * 0.016),
            const Divider(height: 15, thickness: 2, indent: 10, endIndent: 0, color: Colors.grey),
            Theme(
                  data: Theme.of(
                    context,
                  ).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                         title: TranslatedText(
                         "Zone-wise recommended varieties ",
                         style: TextStyle(
               fontSize: 22,
               fontWeight: FontWeight.bold,
               fontFamily: "Gilroy Regular",
               color: Color(0xFF00695C),
                         ),
                         textAlign: TextAlign.left,
                       ),
              children: [
                TranslatedText("Farmers are advised to select 3-4 varieties popular among their zone and ensure the availability of seed of these varieties well in advance.i.e. before sowing. The zone-wise list of recommended and notified soybean varieties suitable for different zone is given in Table"
                       , style: TextStyle(
                         fontSize: 19,
                         fontWeight: FontWeight.w600,
                         fontFamily: "Gilroy Regular",
                         color: Color(0xFF00796B),
                       ), ),
              ExpansionTile(
                title: TranslatedText(
                  "Table 1 Central Zone: ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Gilroy Regular",
                    color: Color(0xFFF57F17),
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Image.asset(
                    'assets/images/Crop manage/table 1.jpg',
                    width: 700,
                  ), // Replace with your image asset path
                ],
              ),
              ExpansionTile(
                title: TranslatedText(
                  "Table 2 Eastern Zone & North Eastern Hill Zone: ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Gilroy Regular",
                    color: Color(0xFFF57F17),
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Image.asset(
                    'assets/images/Crop manage/table 2.jpg',
                    width: 700,
                  ), // Replace with your image asset path
                ],
              ),
              ExpansionTile(
                title: TranslatedText(
                  "Table 3 Northern Plain Zone & Northern Hill Zone: ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Gilroy Regular",
                    color: Color(0xFFF57F17),
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Image.asset(
                    'assets/images/Crop manage/table 3.jpg',
                    width: 700,
                  ),
                ],
              ),
              ExpansionTile(
                title: TranslatedText(
                  "Table 4 Sourthern Zone: ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Gilroy Regular",
                    color: Color(0xFFF57F17),
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Image.asset(
                    'assets/images/Crop manage/table 4.jpg',
                    width: 700,
                  ),
                ],
              ),
              ]
                       ),
            ),
            SizedBox(height: screenHeight * 0.017),
            const Divider(height: 15, thickness: 2, indent: 10, endIndent: 0, color: Colors.grey),

      Theme(
        data: Theme.of(
          context,
        ).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: TranslatedText(
            "Improved Soybean Varieties",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: "Gilroy Regular",
              color: Color(0xFF00695C),
            ),
            textAlign: TextAlign.left,
          ),
              children: [
              SizedBox(height: 12),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics:
                    NeverScrollableScrollPhysics(), // So it doesn't conflict with parent scroll
                mainAxisSpacing: 10,
                crossAxisSpacing: 8,
                childAspectRatio: 0.8,
                children:
                    improvedVarieties.map((variety) {
                      return Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                variety["image"]!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            variety["label"]!,
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      );
                    }).toList(),
              ),
            ],
        ),
      ),
      ]
        ),
      ),
      ),
    );
  }
}
