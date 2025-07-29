import 'package:flutter/material.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';
import 'package:url_launcher/url_launcher.dart';
import 'faqs.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    Future<void> _launchUrl(String urlString) async {
      final Uri url = Uri.parse(urlString);
      if (!await launchUrl(url, mode: LaunchMode.externalApplication )) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Could not open the link.')),
        );
      }
    }
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
                TranslatedText(
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
            title: TranslatedText('Farmer Problems & Solutions'),
            onTap: () {
              _launchUrl("https://services.india.gov.in/service/search?kw=problem&ln=en&cat_id_search=&location=district&state_id=&district_name=&pin_code=");
            },
          ),
          ListTile(
            leading: Icon(Icons.question_answer),
            title: TranslatedText('FAQs'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => faqs()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: TranslatedText('Contact Us'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: TranslatedText('Share App'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.star_rate),
            title: TranslatedText('Rate Us'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: TranslatedText('About'),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}
