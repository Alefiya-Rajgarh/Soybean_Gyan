import 'package:flutter/material.dart';
import '../widget/Button.dart';
import 'package:flutter/src/rendering/box.dart';
// import 'package:soybean_gyan/services/LanguageProvider.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   _navigateToNextScreen();
  // }
  //
  // Future<void> _navigateToNextScreen() async {
  //   // Optional: Load last selected language and set it in provider
  //   // This allows skipping language screen if already selected.
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? savedLangCode = prefs.getString('selectedLangCode');
  //
  //   // Get the provider instance (listen: false as we're in initState)
  //   final languageProvider = Provider.of<LanguageProvider>(context, listen: false);
  //
  //   Timer(const Duration(seconds: 3), () {
  //     if (savedLangCode != null && savedLangCode.isNotEmpty) {
  //       languageProvider.changeLanguage(savedLangCode); // Set it in provider
  //       Navigator.pushReplacementNamed(context, '/home');
  //     } else {
  //       // If no language saved, or if you always want to show language screen first time:
  //       // Ensure provider is at 'en' if no language is saved yet from prefs.
  //       // The provider defaults to 'en', so this might be redundant unless logic changes.
  //       languageProvider.changeLanguage('en');
  //       Navigator.pushReplacementNamed(context, '/lang');
  //     }
  //   });
  // }
  //
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
            child: Container(
              width: screenWidth,
              height: screenHeight,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg.jpg"),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: screenHeight * 0.3815),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Center(
                        child: Text(
                          "Soybean Gyan",
                          style: TextStyle(
                            fontSize: screenWidth * 0.11,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF156B34),
                            fontFamily: "Gilroy Heading",
                            // shadows: [
                            //   // Shadow(
                            //   //   blurRadius: screenWidth * 0.2,
                            //   //   color: Color(0xFF53B175),
                            //   //   offset: Offset(0, 0),
                            //   // ),
                            // ],
                          ),
                        ),
                      ),
                    ),
                    //SizedBox(height: screenHeight * 0.001),
                    Text(
                      "-AI powered",
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF156B34),
                        fontFamily: "Gilroy Regular",
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    CircleAvatar(
                      radius: 100, // Image radius
                      backgroundImage: AssetImage('assets/images/logo.jpg'),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      "ICAR - National Soybean",
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF156B34),
                        fontFamily: "Gilroy Heading",
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.001),
                    Text("Research Institute, Indore",
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF156B34),
                        fontFamily: "Gilroy Heading",
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.001),
                    MyButton(
                      onTab: () {
                        Navigator.pushReplacementNamed(context, '/lang');
                      },
                      text: "Get Started",
                    ),
                  ],
                ),
              ),
            ),
          ),
    );
  }
}
