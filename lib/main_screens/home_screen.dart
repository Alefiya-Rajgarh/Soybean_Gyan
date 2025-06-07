import 'package:flutter/material.dart';
import 'package:soybean_gyan/screen_widgets/app_bar.dart';
import 'package:soybean_gyan/screen_widgets/bottom_navbar.dart';
import 'package:soybean_gyan/screen_widgets/drawer.dart';
import 'Home/HomePage.dart';
import 'Learn/Learn.dart';
import 'Calendar/Calendar.dart';
import 'Tools/Tools.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  List<String> allItems = ['Fertilizer', 'Crop Manage', 'Pesticide', 'Tractor'];
  List<String> filteredItems = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filteredItems = allItems;
  }

  void _handleSearch(String query) {
    setState(() {
      filteredItems = allItems
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  final List<String> titles = [
    'Soybean Gyan',
    'Learn',
    'Calendar',
    'Tools',
  ];

  final List<Widget> pages = [
    HomePage(),
    const Learn(),
    const Calendar(),
    const Tools()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          key: _scaffoldKey,
          appBar: CustomAppBar(scaffoldKey: _scaffoldKey, title: titles[_selectedIndex], onSearch: _handleSearch,),
          drawer: const CustomDrawer(),
      body: pages[_selectedIndex],
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
