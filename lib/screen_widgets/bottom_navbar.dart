import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Color(0xFF156B34),
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 30,),
          label: 'Home' ,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book, size: 30,),
          label: 'Learn',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today,size: 30,),
          label: 'Calendar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.build,size: 30,),
          label: 'Tools',
        ),
      ],
    );
  }
}
