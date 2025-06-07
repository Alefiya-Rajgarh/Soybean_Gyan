import 'package:flutter/material.dart';

class Tools extends StatefulWidget {
  const Tools({super.key});

  @override
  State<Tools> createState() => _ToolsState();
}

class _ToolsState extends State<Tools> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child:Column(
        children: [
        SizedBox(height: 250,),
    Text("This will contain Farm Machinery"),
    ]
    )
    );
    }
}
