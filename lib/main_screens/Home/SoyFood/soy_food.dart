import 'package:flutter/material.dart';
import 'soyfood_data.dart';
import 'soyfood_details.dart';

class SoyFood extends StatefulWidget {
  const SoyFood({super.key});

  @override
  State<SoyFood> createState() => _SoyFoodState();
}

class _SoyFoodState extends State<SoyFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Soy Foods",
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
          itemCount: allFoods.length,
          itemBuilder: (context, index) {
            final soyfood = allFoods[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SoyfoodDetailscreen(soyfood : soyfood),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(soyfood.image_path),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3),
                      BlendMode.darken,
                    ),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  soyfood.name,
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
