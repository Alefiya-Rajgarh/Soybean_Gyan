import 'package:flutter/material.dart';
import 'package:soybean_gyan/widget/Button.dart';
import 'package:provider/provider.dart';
import 'package:soybean_gyan/services/LanguageProvider.dart';

class language extends StatefulWidget {
  const language({super.key});
  //0xFFE8F5E9

  @override
  State<language> createState() => _languageState();
}

class _languageState extends State<language>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  String _currentlyTappedLangCode = 'en';

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _currentlyTappedLangCode = Provider.of<LanguageProvider>(context, listen: false).selectedLangCode;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Future<void> _saveLanguagePreference(String langCode) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setString('selectedLangCode', langCode);
  // }

  String selectedLangCode = 'en';

  final List<Map<String, String>> languages = [
    {'code': 'en', 'label': 'English', 'script': 'En'},
    {'code': 'hi', 'label': 'हिंदी', 'script': 'ह'}, //hindi
    {'code': 'ta', 'label': 'தமிழ்', 'script': 'த'}, //tamil
    {'code': 'te', 'label': 'తెలుగు', 'script': 'త'}, //telugu
    {'code': 'mr', 'label': 'मराठी', 'script': 'म'}, //marathi
    {'code': 'kn', 'label': 'ಕನ್ನಡ', 'script': 'ಕ'}, //kannada
    {'code': 'ml', 'label': 'മലയാളം', 'script': 'മ'}, //malayalam
    {'code': 'bn', 'label': 'বাংলা', 'script': 'ব'}, //bengali
    {'code': 'pa', 'label': 'ਪੰਜਾਬੀ', 'script': 'ਪ'}, //punjabi
    {'code': 'gu', 'label': 'ગુજરાતી', 'script': 'ગ'}, //gujarati
    {'code': 'as', 'label': 'অসমীয়া', 'script': 'অ'}, //assamese
    {'code': 'ur', 'label': 'اُردُو', 'script': 'ا'}, //urdu
    {'code': 'or', 'label': 'ଓଡ଼ିଆ', 'script': 'ଓ'},//oriya
    {'code': 'sa', 'label': 'संस्कृतम्', 'script': 'स'},//sanscrit
    {'code': 'sd', 'label': 'سنڌي', 'script': 'س'},//sindhi
    {'code': 'mni', 'label': 'মৈতৈলোন্', 'script': 'ম'},//manipuri
    {'code': 'ne', 'label': '	नेपाली', 'script': 'न'},
  ];

  @override
  Widget build(BuildContext context) {
    // Access the LanguageProvider to get the selected code for highlighting
    final languageProvider = Provider.of<LanguageProvider>(context);
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.09),
          Text(
            'Select Language',
            style: TextStyle(
              fontSize: screenWidth * 0.071,
              fontWeight: FontWeight.w700,
              color: Color(0xFF156B34),
              fontFamily: "Gilroy Heading",

            ),
          ),
          SizedBox(height: screenHeight * 0.01),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(18),
              crossAxisCount: 3,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 0.8,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              children:
                  languages.map((lang) {
                    final isSelected = selectedLangCode == lang['code'];
                    return GestureDetector(
                      onTap: () {
                        languageProvider.changeLanguage(lang['code']!);
                        setState(() {
                          selectedLangCode = lang['code']!;
                          _currentlyTappedLangCode = lang['code']!;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              offset: Offset(2, 2),
                            ),
                          ],
                          border:
                              isSelected
                                  ? Border.all(
                                    color: Color(0xFF53B175),
                                    width: 2,
                                  )
                                  : Border.all(color: Colors.transparent),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              lang['script']!,
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Gilroy Regular",
                                color: Color(0xFF156B34),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              lang['label']!,
                              style: TextStyle(fontSize: 15, fontFamily: "Gilroy Regular", fontWeight: FontWeight.w500),
                            ),
                            if (isSelected)
                              const Icon(
                                Icons.check_circle,
                                color: Color(0xFF53B175),
                              ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.01,
              vertical: screenHeight * 0.04,
            ),

            child: MyButton(
              onTab: () {
                languageProvider.changeLanguage(_currentlyTappedLangCode);
                // _saveLanguagePreference(_currentlyTappedLangCode);
                Navigator.pushReplacementNamed(context, '/home');
              },
              text: "Next",
            ),
          ),
        ],
      ),
    );
  }
}
