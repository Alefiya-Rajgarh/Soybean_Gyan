import 'package:flutter/material.dart';
import 'insect_data.dart';

class InsectDetailscreen extends StatelessWidget {
  final Insect insect;
  InsectDetailscreen({super.key, required this.insect});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                        insect.image_path,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SliverPersistentHeader(
                  delegate: _SliverTabBarDelegate(
                    const TabBar(
                      labelPadding: EdgeInsets.symmetric(horizontal: 1),
                      labelColor: Color(0xFF00796B),
                      labelStyle: TextStyle(
                        fontSize: 18,
                        fontFamily: "Gilroy Heading",
                        fontWeight: FontWeight.w400,
                      ),
                      unselectedLabelColor: Colors.grey,
                      unselectedLabelStyle: TextStyle(
                        fontSize: 18,
                        fontFamily: "Gilroy Heading",
                        fontWeight: FontWeight.w400,
                      ),
                      indicatorColor: Color(0xFF156B34),
                      tabs: [
                        Tab(text: "Identification"),
                        Tab(text: "Damage"),
                        Tab(text: "Management"),
                      ],
                    ),
                    insect.title,
                  ),
                  pinned: true,
                ),
              ],
          body: TabBarView(
            children: [
              DetailSection(content: insect.identification),
              DetailSection(content: insect.damage),
              DetailSection(content: insect.management),
            ],
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
                  child: Text(
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
        child: Text(
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
