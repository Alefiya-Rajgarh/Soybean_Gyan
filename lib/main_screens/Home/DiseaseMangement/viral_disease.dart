import 'package:flutter/material.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';
import 'disease_data.dart';

class viralDisease extends StatefulWidget {
  const viralDisease({super.key});

  @override
  State<viralDisease> createState() => _viralDiseaseState();
}

class _viralDiseaseState extends State<viralDisease> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: TranslatedText(
          "Viral Diseases",
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
          itemCount: allviralDisease.length,
          itemBuilder: (context, index) {
            final disease = allviralDisease[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => viralDetails(disease : disease),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                height: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(disease.image_path),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3),
                      BlendMode.darken,
                    ),
                  ),
                ),
                alignment: Alignment.center,
                child: TranslatedText(
                  disease.name,
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
// details screen for viral diseases
class viralDetails extends StatelessWidget {
  final viral disease;
  const viralDetails({super.key, required this.disease});

  @override
  Widget build(BuildContext context) {
    final List<String> originalTabTitles = [
      "Description",
      "Symptoms",
      "Management"
    ];
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.green.shade100 ,
        body: NestedScrollView(
          headerSliverBuilder:
              (context, innerBoxIsScrolled) => [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                context,
              ),
              sliver: SliverAppBar(
                expandedHeight: 250.0,
                pinned: true,
                backgroundColor: Color(0xFFE8F5E9),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    disease.image_path,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SliverPersistentHeader(
              delegate: _SliverTabBarDelegate(
                TabBar(
                  labelPadding: EdgeInsets.symmetric(horizontal: 0),
                  labelColor: Color(0xFF00796B),
                  labelStyle: TextStyle(
                    fontSize: 17,
                    fontFamily: "Gilroy Heading",
                    fontWeight: FontWeight.w400,
                  ),
                  unselectedLabelColor: Colors.grey,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 17,
                    fontFamily: "Gilroy Heading",
                    fontWeight: FontWeight.w400,
                  ),
                  indicatorColor: Color(0xFF156B34),
                  tabs: originalTabTitles.map((title) {
                    return Tab(
                      child: TranslatedText(
                        title,
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Gilroy Heading",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    );
                  }).toList(),
                ),
                disease.name,
              ),
              pinned: true,
            ),
          ],
          body:  TabBarView(
            children: originalTabTitles.map((title) {
              String contentToShow = "";
              switch (title) {
                case "Description":
                  contentToShow = disease.description ?? "Not available";
                  break;
                case "Symptoms":
                  contentToShow = disease.symptoms ?? "Not available";
                  break;
                case "Management":
                  contentToShow = disease.management ?? "Not available";
                  break;
              }
              // Apply padding to the top of each TabBarView child
              return Padding(
                padding: const EdgeInsets.only(top: 90), // <--- KEY CHANGE
                child: DetailSection(content: contentToShow),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class _SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;
  final String title;

  _SliverTabBarDelegate(this._tabBar, this.title);

  @override
  double get minExtent => _tabBar.preferredSize.height + 80;

  @override
  double get maxExtent => _tabBar.preferredSize.height + 80;

  @override
  Widget build(
      BuildContext context,
      double shrinkOffset,
      bool overlapsContent,
      ) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Material(
      child: Container(
        color: Color(0xFFE8F5E9),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.02),
            Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: TranslatedText(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Gilroy Heading",
                      color: Color(0xFF156B34),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            _tabBar,
          ],
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}

class DetailSection extends StatelessWidget {
  final String content;

  const DetailSection({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.green.shade50, Colors.green.shade100],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      //margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
      child: Center(
        child: TranslatedText(
          content,
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w600,
            color: Color(0xFF00796B),
          ),
        ),
      ),
    ),
    );
  }
}
