import 'package:flutter/material.dart';

class PathParamScreen extends StatelessWidget {
  const PathParamScreen({
    Key? key,
    required this.id,
    }) : super(key:key);

    final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PathParamScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('id: $id'),
      ),
    );
  }
}