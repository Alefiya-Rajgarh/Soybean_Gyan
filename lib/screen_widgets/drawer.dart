import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Color(0xFFE8F5E9)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage(
                    'assets/images/logo.jpg',
                  ), // Your logo image
                  // backgroundColor: Colors.white,
                ),
                SizedBox(height: 10),
                Text(
                  'Soybean Gyan',
                  style: TextStyle(
                    color: Color(0xFF156B34),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gilroy Heading",
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.agriculture),
            title: Text('Farmer Problems & Solutions'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.question_answer),
            title: Text('FAQs'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text('Contact Us'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share App'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.star_rate),
            title: Text('Rate Us'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
