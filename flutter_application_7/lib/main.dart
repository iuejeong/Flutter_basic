import 'package:flutter/material.dart';
import 'package:flutter_application_7/route.dart';
import 'package:go_router/go_router.dart';

void main() {
  // context.push로 이동한 경우에도 URL변경 TRUE
  GoRouter.optionURLReflectsImperativeAPIs = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


    @override
    Widget build(BuildContext context) {
      return MaterialApp.router(
        routerConfig: router,
      );
  }
}

