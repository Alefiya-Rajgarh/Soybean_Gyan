import 'package:flutter/material.dart';

class CropManage extends StatefulWidget {
  const CropManage({super.key});

  @override
  State<CropManage> createState() => _CropMangeState();
}

class _CropMangeState extends State<CropManage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Crop Management", style: const TextStyle(
            color: Color(0xFF156B34),
            fontWeight: FontWeight.w700,
            fontFamily: "Gilroy Heading",
            fontSize: 25,
          ),
          ),
          backgroundColor: Color(0xFFE8F5E9)
      ),
      body:  Container(
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
              Text("This will contain Crop management"),
            ]
        )
    )
      )
    );
  }
}

class SoilRequirement extends StatelessWidget {
  const SoilRequirement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Soil Requirements", style: const TextStyle(
            color: Color(0xFF156B34),
            fontWeight: FontWeight.w700,
            fontFamily: "Gilroy Heading",
            fontSize: 25,
          ),
          ),
          backgroundColor: Color(0xFFE8F5E9)
      ),
      body:  Container(
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
              Text("This will contain soil management"),
            ]
        )
    )
      )
    );
  }
}

class Tillage extends StatelessWidget {
  const Tillage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Varieties extends StatelessWidget {
  const Varieties({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Seed extends StatelessWidget {
  const Seed({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Sowing extends StatelessWidget {
  const Sowing({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Fertilizers extends StatelessWidget {
  const Fertilizers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Manure & Fertilizers", style: const TextStyle(
            color: Color(0xFF156B34),
            fontWeight: FontWeight.w700,
            fontFamily: "Gilroy Heading",
            fontSize: 25,
          ),
          ),
          backgroundColor: Color(0xFFE8F5E9)
      ),
      body:  Container(
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
              Text("This will contain Fertilizer"),
            ]
        )
    )
      )
    );
  }
}

class Intercropping extends StatelessWidget {
  const Intercropping({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Water extends StatelessWidget {
  const Water({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Water Management", style: const TextStyle(
            color: Color(0xFF156B34),
            fontWeight: FontWeight.w700,
            fontFamily: "Gilroy Heading",
            fontSize: 25,
          ),
          ),
          backgroundColor: Color(0xFFE8F5E9)
      ),
      body:  Container(
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
              Text("This will contain water management"),
            ]
        )
    )
      )
    );
  }
}

class Harvesting extends StatelessWidget {
  const Harvesting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Harvesting", style: const TextStyle(
            color: Color(0xFF156B34),
            fontWeight: FontWeight.w700,
            fontFamily: "Gilroy Heading",
            fontSize: 25,
          ),
          ),
          backgroundColor: Color(0xFFE8F5E9)
      ),
      body:  Container(
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
        child: Column(
            children: [
              SizedBox(height: 250,),
              Text("This will contain Harvesting Details"),
            ]
        )
    )
      )
    );
  }
}





