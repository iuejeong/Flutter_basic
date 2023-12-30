import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                context.push('/details');
              }, 
              child: const Text('push detail'),
            ),
            const SizedBox(height: 16),
              ElevatedButton(
              onPressed: () {
                context.push('/pathParamScreen/aaa');
                context.pushNamed('path', pathParameters: {'id': 'aaa'});
              }, 
              child: const Text('go path param page'),
            ),
            const SizedBox(height: 16),
              ElevatedButton(
              onPressed: () {
                context.push('/queryParamScreen?id=bbb');
                context.pushNamed('query', queryParameters: {'id': 'bbb'});
              }, 
              child: const Text('go query param page'),
            ),
            const SizedBox(height: 16),
              ElevatedButton(
              onPressed: () {
                context.push('/extraParamScreen', extra: 'ccc');
                context.pushNamed('/extra', extra: 'ccc');
              }, 
              child: const Text('go extra param page'),
            ),
            const SizedBox(height: 16),
              ElevatedButton(
              onPressed: () {
                context.push('/extraParamScreen');
              }, 
              child: const Text('go extra param page(null)'),
            ),
          ],
        ),
      ),
    );
  }
}