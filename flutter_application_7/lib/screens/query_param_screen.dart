import 'package:flutter/material.dart';

class QueryParamScreen extends StatelessWidget {
  const QueryParamScreen({
    Key? key,
    required this.id,
    }) : super(key:key);

    final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QueryParamScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('id: $id'),
      ),
    );
  }
}