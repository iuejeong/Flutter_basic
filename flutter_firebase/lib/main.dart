import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/firebase_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseService().initialize();

  /// 플러터 오류(dart, flutter)
  FlutterError.onError = (FlutterErrorDetails errorDetails) {
    FirebaseService.crashlytics.recordFlutterFatalError(errorDetails);
  };

  /// 플랫폼 오류(android, iOS, web, window, linux etc.)
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseService.crashlytics.recordError(error, stack, fatal: true);
    return true;
  };

  /// 위젯 오류
  ErrorWidget.builder = (FlutterErrorDetails details) {
    FirebaseService.crashlytics.recordFlutterError(details);
    return Container();
  };

  /// analytics
  FirebaseService.analytics.setAnalyticsCollectionEnabled(true);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Home'),
          onPressed: () {
            FirebaseService.analytics.logEvent(
              name: 'event_name',
              parameters: {
                'string_param': 'abcd',
                'int_param': 42,
              },
            );
          },
        ),
      ),
    );
  }
}
