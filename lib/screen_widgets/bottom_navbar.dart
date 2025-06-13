import 'package:flutter/material.dart';
import 'package:soybean_gyan/services/LanguageProvider.dart';
import 'package:provider/provider.dart';


class CustomBottomNavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  // Define your navigation items data
  // Could also be passed as a parameter if dynamic
  static const List<Map<String, dynamic>> _navBarItemsData = [
    {'key': 'home', 'icon': Icons.home_outlined, 'selectedIcon': Icons.home, 'originalLabel': 'Home'},
    {'key': 'learn', 'icon': Icons.menu_book_outlined, 'selectedIcon': Icons.menu_book, 'originalLabel': 'Learn'},
    {'key': 'calendar', 'icon': Icons.calendar_today_outlined, 'selectedIcon': Icons.calendar_today, 'originalLabel': 'Calendar'},
    {'key': 'tools', 'icon': Icons.build_outlined, 'selectedIcon': Icons.build, 'originalLabel': 'Tools'},
  ];

  // Store translated labels in the state
  Map<String, String> _translatedLabels = {};
  late LanguageProvider _languageProvider; // To avoid multiple lookups in build

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _languageProvider = Provider.of<LanguageProvider>(context);
    _loadTranslatedLabels(); // Load labels when dependencies change (like language)

  }

  // void _onLanguageChange() {
  //   if (mounted) { // Ensure widget is still in the tree
  //     _loadTranslatedLabels();
  //   }
  // }

  // @override
  // void dispose() {
  //   _languageProvider.removeListener(_onLanguageChange); // Clean up listener
  //   super.dispose();
  // }

  Future<void> _loadTranslatedLabels() async {
    if (!mounted) return; // Check if the widget is still mounted

    final currentLangCode = _languageProvider.selectedLangCode;
    Map<String, String> newLabels = {};

    for (var itemData in _navBarItemsData) {
      final originalLabel = itemData['originalLabel'] as String;
      final itemKey = itemData['key'] as String;

      if (currentLangCode == "en") { // Optimization
        newLabels[itemKey] = originalLabel;
      } else {
        // Use the translate method from LanguageProvider
        // Provide a fallback to original label during loading or if translation fails
        newLabels[itemKey] = await _languageProvider.translate(originalLabel) ?? originalLabel;
      }
    }

    if (mounted) { // Check again before calling setState
      setState(() {
        _translatedLabels = newLabels;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFF156B34),
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      items: _navBarItemsData.map((itemData) {
        final itemKey = itemData['key'] as String;
        final originalLabel = itemData['originalLabel'] as String;
        // Get the translated label from state, fallback to original if not yet loaded
        final label = _translatedLabels[itemKey] ?? originalLabel;

        return BottomNavigationBarItem(
          icon: Icon(
            widget.currentIndex == _navBarItemsData.indexOf(itemData)
                ? itemData['selectedIcon'] as IconData
                : itemData['icon'] as IconData,
            size: 28,
          ),
          label: label, // Use the (translated) string from state
        );
      }).toList(),
    );
  }
}