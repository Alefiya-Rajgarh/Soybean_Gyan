import 'package:flutter/material.dart';
import 'package:soybean_gyan/main_screens/home_screen.dart';
import 'package:soybean_gyan/Start_app/Language_screen.dart';
import 'package:soybean_gyan/Start_app/Splashscreen.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => splashscreen(),
        "/lang": (context) => language(),
        "/home": (context) => Home(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}

