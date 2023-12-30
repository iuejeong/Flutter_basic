import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShellHomeScreen extends StatelessWidget {
  const ShellHomeScreen({super.key, required this.index});

  final String index;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Text(
          'Index $index: Home',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          ),
      ),
    );
  }
}