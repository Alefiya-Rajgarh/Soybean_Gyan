import 'package:flutter/material.dart';
import 'soyfood_data.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';

class SoyfoodDetailscreen extends StatelessWidget {
  final Soyfood soyfood;
  SoyfoodDetailscreen({super.key, required this.soyfood});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            pinned: true,
            backgroundColor: Color(0xFFE8F5E9),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(soyfood.image_path, fit: BoxFit.cover),
            ),
          ),
          SliverPersistentHeader(
            delegate: _SliverTabBarDelegate(soyfood.name),
            pinned: true,
          ),
          SliverFillRemaining(child: DetailSection(content: soyfood.recipe)),
        ],
      ),
    );
  }
}

class _SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  final String title;

  _SliverTabBarDelegate(this.title);

  @override
  double get minExtent => 80;

  @override
  double get maxExtent => 80;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Material(
      elevation: overlapsContent ? 4.0 : 0.0,
      child: Container(
        color: Color(0xFFE8F5E9),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Gilroy Heading",
                  color: Color(0xFF156B34),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        ]
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
    return Container(
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
          child:
        TranslatedText(
          content,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xFF00796B),
          ),
        ),
        ),
    );
  }
}
