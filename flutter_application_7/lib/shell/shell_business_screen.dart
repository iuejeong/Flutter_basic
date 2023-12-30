import 'package:flutter/material.dart';

class ShellBusinessScreen extends StatelessWidget {
  const ShellBusinessScreen({super.key, required this.index});

  final String index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Index $index: Business',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          ),
      ),
    );
  }
}