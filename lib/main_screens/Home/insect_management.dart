import 'package:flutter/material.dart';

class InsectPage extends StatefulWidget {
  const InsectPage({super.key});

  @override
  State<InsectPage> createState() => _InsectPageState();
}

class _InsectPageState extends State<InsectPage> {
  final List<Map<String, String>> insects = [
    {
      "name": "Blue Beetle",
      "image": "assets/images/Insect manage/blue beetle.jpg",
    },
    {"name": "Insects", "image": "assets/images/Insect manage/insect.png"},
    // {"title": "Smart Soy", "image": "assets/images/Smart Soy/Smart_Soy.png"},
    // {"title": "Soy Food", "image": "assets/images/Soy Food/soyFood.png"},
    // {"title": "Fertilizers", "image": "assets/images/Crop manage/fertilizer.png"},
    // {"title": "Soil", "image": "assets/images/Crop manage/soil.png"},
    // {"title": "Disease", "image": "assets/images/"},
    // {"title": "Weed", "image": "assets/images/"},
    // {"title": "Water", "image": "assets/images/"},
    // {"title": "Harvesting", "image": "assets/images/"},
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Insect Management",
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
          itemCount: insects.length,
          itemBuilder: (context, index) {
            final insect = insects[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      if (index == 0)
                        return BlueBeetle();
                      else if (index == 1)
                        return BiharCaterpillar();
                      // else if(index == 2) return CropManage();
                      // else if (index == 3) return InsectPage();
                      // else if(index == 4) return SoyFood();
                      // else if(index == 5) return DiseaseManage();
                      // else if(index == 6) return WeedManage();
                      else
                        return Placeholder();
                    },
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(insect['image']!),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3),
                      BlendMode.darken,
                    ),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  insect['name']!,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class BlueBeetle extends StatelessWidget {
  const BlueBeetle({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     "Blue Beetle",
        //     style: const TextStyle(
        //       color: Color(0xFF156B34),
        //       fontWeight: FontWeight.w700,
        //       fontFamily: "Gilroy Heading",
        //       fontSize: 25,
        //     ),
        //   ),
        //   backgroundColor: Color(0xFFE8F5E9),
        // ),
        body: Container(
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
              Stack(
                children: [
                  Image.asset(
                    'assets/images/Insect manage/blue beetle.jpg',
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 40,
                    left: 10,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
              Container(
                color: const Color(0xFF388E3C),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Blue Beetle (Cneorane sp.)',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const TabBar(
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.white60,
                      indicatorColor: Colors.white,
                      tabs: [
                        Tab(text: "Identification"),
                        Tab(text: "Damage"),
                        Tab(text: "Management"),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    buildIdentificationTab(),
                    buildDamageTab(),
                    buildManagementTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIdentificationTab() {
    return Container(
      color: const Color(0xFF81C784),
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(16),
      child: const Text(
        "This insect is dark metallic blue (almost blackish) in colour, with an orange head. "
        "With little disturbance, it falls on the ground and shows feign-death.",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget buildDamageTab() {
    return Center(
      child: Text(
        "Damage information goes here...",
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget buildManagementTab() {
    return Center(
      child: Text(
        "Management information goes here...",
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

class BiharCaterpillar extends StatelessWidget {
  const BiharCaterpillar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bihar Caterpillar",
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
              Text("this will contain BiharCaterpillar details"),
            ],
          ),
        ),
      ),
    );
  }
}

class GridleBeetle extends StatelessWidget {
  const GridleBeetle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class GramPodBorer extends StatelessWidget {
  const GramPodBorer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class GreenSemiloopers extends StatelessWidget {
  const GreenSemiloopers({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
