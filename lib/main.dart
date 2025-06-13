import 'package:flutter/material.dart';
import 'package:soybean_gyan/main_screens/home_screen.dart';
import 'package:soybean_gyan/Start_app/Language_screen.dart';
import 'package:soybean_gyan/Start_app/Splashscreen.dart';
import 'package:soybean_gyan/services/LanguageProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => LanguageProvider(),
      child:MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Watch the provider to set MaterialApp's locale (good practice, might help some internal widgets)
    final languageProvider = Provider.of<LanguageProvider>(context);

    return MaterialApp(
      locale: Locale(languageProvider.selectedLangCode),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate, // For Cupertino (iOS-style) widgets
      ],
      supportedLocales: const [
        Locale('en', ''), // English
        Locale('hi', ''), // Hindi
        Locale('ta', ''), // tamil
        Locale('te', ''), // telugu
        Locale('mr', ''), // marathi
        Locale('kn', ''), // kannada
        Locale('ml', ''), // malayalam
        Locale('bn', ''), // bengali
        Locale('pa', ''), // punjabi
        Locale('gu', ''), // Gujarati
        Locale('as', ''), // Assamese
        Locale('ur', ''), // Urdu
        Locale('or', ''), // Oriya
        Locale('sa', ''), // Sanskrit
        Locale('sd', ''), // Sindhi
        Locale('mni', ''), // Manipuri
        Locale('ne', ''), // Nepali
        // Add all languages you intend to support with .arb files
      ],
      initialRoute: "/",
      routes: {
        "/": (context) => splashscreen(),
        "/lang": (context) => language(),
        "/home": (context) => Home(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
