import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyWidget()
      ),
    );
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Hello',
              style: TextStyle(fontFamily: 'Rubik', fontSize: 100),
            ),
            Image.asset('assets/sample.png')
            ]
        ),
      )
    );
  }
}