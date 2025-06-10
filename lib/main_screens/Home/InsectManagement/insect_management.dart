import 'package:flutter/material.dart';
import 'insect_data.dart';
import 'insect_detailscreen.dart';

class InsectPage extends StatefulWidget {
  const InsectPage({super.key});

  @override
  State<InsectPage> createState() => _InsectPageState();
}

class _InsectPageState extends State<InsectPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Insect Management",
          style: const TextStyle(
            color: Color(0xFF156B34),
            fontWeight: FontWeight.w700,
            fontFamily: "Gilroy Heading",
            fontSize: 25,
          ),
        ),
        backgroundColor: Color(0xFFE8F5E9),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.green.shade50, Colors.green.shade100],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          padding: EdgeInsets.all(15),
          itemCount: allInsects.length,
          itemBuilder: (context, index) {
            final insect = allInsects[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InsectDetailscreen(insect : insect),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(insect.image_path),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3),
                      BlendMode.darken,
                    ),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  insect.name,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Gilroy Heading",
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
