import 'package:flutter/material.dart';
import 'dart:async';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:soybean_gyan/main_screens/Home/crop_manage.dart';
import 'package:soybean_gyan/main_screens/Home/disease_manage.dart';
import 'package:soybean_gyan/main_screens/Home/insect_management.dart';
import 'package:soybean_gyan/main_screens/Home/market_price.dart';
import 'package:soybean_gyan/main_screens/Home/smart_soy.dart';
import 'package:soybean_gyan/main_screens/Home/soy_food.dart';
import 'package:soybean_gyan/main_screens/Home/weed_manage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  int _currentPage = 0;
  Timer? _timer;

  final List<Map<String, String>> horizontalItems = [
    {
      "title": "Smart Soy - AI Powered Disease & Pest Diagnosis",
      "image": "assets/images/Smart Soy/smart Soy.jpg",
    },
    {
      "title": "Market Price",
      "image": "assets/images/Market Price/Market_price.jpg",
    },
    {"title": "Crop Management",
      "image": "assets/images/Crop manage/crop management.jpg"},
    {
      "title": "Insect Management",
      "image": "assets/images/Insect manage/insect management.jpg",
    },
    {"title": "Soy Food", "image": "assets/images/Soy Food/Soya-foods.jpg"},
    {
      "title": "Disease Management",
      "image": "assets/images/Disease manage/disease management.jpg",
    },
    {"title": "Weed Management", "image": "assets/images/Weed manage/weed management.png"},
  ];

  final List<Map<String, String>> gridItems = [
    {"title": "Market Price", "image": "assets/images/Market Price/soybeans.png"},
    {"title": "Insect", "image": "assets/images/Insect manage/insect.png"},
    {"title": "Smart Soy", "image": "assets/images/Smart Soy/Smart_Soy.png"},
    {"title": "Soy Food", "image": "assets/images/Soy Food/soyFood.png"},
    {"title": "Fertilizers", "image": "assets/images/Crop manage/fertilizer.png"},
    {"title": "Soil", "image": "assets/images/Crop manage/soil.png"},
    {"title": "Disease", "image": "assets/images/Disease manage/disease.png"},
    {"title": "Weed", "image": "assets/images/Weed manage/weed.png"},
    {"title": "Water", "image": "assets/images/Crop manage/water.png"},
    {"title": "Harvesting", "image": "assets/images/Crop manage/harvest.png"},
  ];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < horizontalItems.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  Widget buildSliderItem(String title, String imagePath, VoidCallback onTap) {
    return Material(
      color: Colors.transparent,
    child: InkWell(
    onTap: onTap,
      child:
      Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.4),
            BlendMode.darken,
          ),
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w900,
          fontFamily: "Gilroy Regular",
        ),
      ),
      )
    )
    );
  }

  Widget buildGridItem(String title, String imagePath, VoidCallback onTap) {
    return Material(
      color: Colors.transparent,
    child: InkWell(
    onTap: onTap,
      child:
      Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [//Color(0xFF7FC598)
                    Color(0xFFAED4BB)
                 , Color(0xFFE8F5E9)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      alignment: Alignment.center,
      margin: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
           flex: 6,
      child:
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Image.asset(imagePath, fit: BoxFit.contain, width: double.infinity,),
          ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: FittedBox( fit: BoxFit.scaleDown,
              child: Text(
                title, textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFF156B34), fontWeight: FontWeight.w700, fontFamily: "Gilroy Regular", fontSize: 21),
              ),
            ),
          ),
          )
        ],
      ),
      )
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
    children: [
      Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.02),
              Container(
                height: screenHeight * 0.23,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: horizontalItems.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return buildSliderItem(
                      horizontalItems[index]['title']!,
                      horizontalItems[index]['image']!,
                        (){
                          Navigator.push(
                                 context, MaterialPageRoute(
                                builder: (context) {
                                  if (index == 0) return SmartSoy();
                                  else if(index == 1) return MarketPrice();
                                  else if(index == 2) return CropManage();
                                  else if (index == 3) return InsectPage();
                                  else if(index == 4) return SoyFood();
                                  else if(index == 5) return DiseaseManage();
                                  else if(index == 6) return WeedManage();
                                  else return Placeholder();
                                }
                                     ),
                               );
                        }
                    );
                  },
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              SmoothPageIndicator(
                controller: _pageController,
                count: horizontalItems.length,
                effect: WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: 8,
                  dotColor: Colors.grey.shade400,
                  activeDotColor: Color(0xFF53B175),
                ),
              ),
              SizedBox(height: screenHeight * 0.015),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: gridItems.length,
                padding: EdgeInsets.symmetric(horizontal: 16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  return buildGridItem(
                    gridItems[index]['title']!,
                    gridItems[index]['image']!,
                      (){
                        Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context) {
                              if (index == 0) return MarketPrice();
                              else if(index == 1) return InsectPage();
                              else if(index == 2) return SmartSoy();
                              else if (index == 3) return SoyFood();
                              else if(index == 4) return Fertilizers();
                              else if(index == 5) return SoilRequirement();
                              else if(index == 6) return DiseaseManage();
                              else if(index == 7) return WeedManage();
                              else if(index == 8) return Water();
                              else if(index == 9) return Harvesting();
                              else return Placeholder();
                            }
                        ),
                        );
                      }
                  );
                },
              ),
              Container(
                height: screenHeight * 0.1,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.green.shade100, Color(0xFFAED4BB)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    Positioned(right: screenWidth*0.04, bottom: screenHeight*0.015,
        child: FloatingActionButton(
          onPressed: (){
            },
          shape: CircleBorder(),
          backgroundColor: Colors.white,
          elevation: 6,
            child: Image.asset('assets/images/FAB(soybot).png', fit: BoxFit.cover),
         tooltip: 'Chat with Soybot',
        )
    ),
    ],
    );
  }
}
