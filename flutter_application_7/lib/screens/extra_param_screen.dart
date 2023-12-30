import 'package:flutter/material.dart';

class ExtraParamScreen extends StatelessWidget {
  const ExtraParamScreen({
    Key? key,
    required this.id,
    }) : super(key:key);

    final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExtraParamScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('id: $id'),
      ),
    );
  }
}