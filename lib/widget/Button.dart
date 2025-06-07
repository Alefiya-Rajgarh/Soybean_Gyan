import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onTab;
  final String text;

  const MyButton({super.key, required this.onTab, required this.text});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTab,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 12),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Color(0xFF53B175),
          ),

          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontFamily: "Gilroy Regular",
              fontSize: screenWidth * 0.045,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
