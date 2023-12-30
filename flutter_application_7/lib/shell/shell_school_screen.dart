import 'package:flutter/material.dart';

class ShellSchoolScreen extends StatelessWidget {
  const ShellSchoolScreen({super.key, required this.index});

  final String index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Index $index: School',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          ),
      ),
    );
  }
}