import 'package:flutter/material.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final String title;
  final ValueChanged<String>? onSearch;

  const CustomAppBar({
    Key? key,
    required this.scaffoldKey,
    required this.title,
    this.onSearch,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();

  void _toggleSearch() {
    setState(() {
      _isSearching = !_isSearching;
      if (!_isSearching) {
        _searchController.clear();
        widget.onSearch?.call('');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      shadowColor: Colors.grey,
      leading: IconButton(
        icon: Icon(Icons.menu_rounded, color: Colors.black54, size: 30),
        onPressed: () => widget.scaffoldKey.currentState?.openDrawer(),
      ),
      title: _isSearching
          ? TextField(
        controller: _searchController,
        autofocus: true,
        decoration: const InputDecoration(
          hintText: "Search...",
          border: InputBorder.none,
        ),
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 18,
        ),
        onChanged: widget.onSearch,
      )
          :TranslatedText(widget.title,
        style: const TextStyle(
          color: Color(0xFF156B34),
          fontWeight: FontWeight.w700,
          fontFamily: "Gilroy Heading",
          fontSize: 25,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            _isSearching ? Icons.close : Icons.search,
            color: Colors.black54,
            size: 30,
          ),
          onPressed: _toggleSearch,
        ),
      ],
    );
  }
}
