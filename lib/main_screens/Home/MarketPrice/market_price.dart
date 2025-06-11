import 'package:flutter/material.dart';

class MarketPrice extends StatefulWidget {
  const MarketPrice({super.key});

  @override
  State<MarketPrice> createState() => _MarketPriceState();
}

class _MarketPriceState extends State<MarketPrice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Market Price", style: const TextStyle(
        color: Color(0xFF156B34),
    fontWeight: FontWeight.w700,
    fontFamily: "Gilroy Heading",
    fontSize: 25,
    ),
    ),
    backgroundColor: Color(0xFFE8F5E9)
    ),
    body: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    colors: [
    Colors.white,
    Colors.green.shade50,
    Colors.green.shade100,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    ),
    ),
    child:
      Center(
        child:Column(
            children: [
              SizedBox(height: 250,),
              Text("This will contain Market price"),
            ]
        )
      )
    )
    );
  }
}
