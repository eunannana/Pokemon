import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key, required this.name}) : super(key: key);

String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hi, $name"),
      ),
    );
  }
}