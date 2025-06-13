import 'package:flutter/material.dart';
import 'crop_data.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';

class CropDetailscreen extends StatelessWidget {
  final Crop crop;
  CropDetailscreen({super.key, required this.crop});

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
              background: Image.asset(crop.image_path, fit: BoxFit.cover),
            ),
          ),
          SliverPersistentHeader(
            delegate: _SliverTabBarDelegate(crop.name),
            pinned: true,
          ),
          if (crop.details.isNotEmpty)
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  final item = crop.details[index];
                  return DetailSection(item: item);
                }, childCount: crop.details.length),
              )
          else
            SliverFillRemaining(
              hasScrollBody: false, // The child itself is not scrollable
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TranslatedText(
                    "No details available for ${crop.name}.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ),
            ),
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
    final double titleSize = 30 - (shrinkOffset / maxExtent * 10);
    return Material(
      elevation: overlapsContent ? 4.0 : 1.0,
      child: Container(
        color: Color(0xFFE8F5E9),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: TranslatedText(
                    title,
                    style: TextStyle(
                      fontSize: titleSize > 20 ? titleSize : 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Gilroy Heading",
                      color: Color(0xFF156B34),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
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
  final DetailItem item;

  const DetailSection({super.key, required this.item});

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
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TranslatedText(
              item.title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                fontFamily: "Gilroy Regular",
                color: Color(0xFF00796B),
              ),
            ),
            const SizedBox(height: 8),
            TranslatedText(
              item.description,
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
    );
  }
}
