// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAW7uRoUiXD4d9oopQE76IAO-yNe1lpWek',
    appId: '1:99127805402:web:9766842e1972e90b71ece3',
    messagingSenderId: '99127805402',
    projectId: 'flutter-firebase-7cc39',
    authDomain: 'flutter-firebase-7cc39.firebaseapp.com',
    storageBucket: 'flutter-firebase-7cc39.appspot.com',
    measurementId: 'G-S4CQZBP3XQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDuEGcU1MwH4WBkAusY2Sq1-ah-0L_fNg8',
    appId: '1:99127805402:android:811bf2513e14bdb271ece3',
    messagingSenderId: '99127805402',
    projectId: 'flutter-firebase-7cc39',
    storageBucket: 'flutter-firebase-7cc39.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBpKuzjt2Q3Kk_RXoUOF-zUJ7HUrd5Dpmk',
    appId: '1:99127805402:ios:91aeb32d54837b9371ece3',
    messagingSenderId: '99127805402',
    projectId: 'flutter-firebase-7cc39',
    storageBucket: 'flutter-firebase-7cc39.appspot.com',
    iosBundleId: 'com.example.flutterFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBpKuzjt2Q3Kk_RXoUOF-zUJ7HUrd5Dpmk',
    appId: '1:99127805402:ios:86e6e96990826ba071ece3',
    messagingSenderId: '99127805402',
    projectId: 'flutter-firebase-7cc39',
    storageBucket: 'flutter-firebase-7cc39.appspot.com',
    iosBundleId: 'com.example.flutterFirebase.RunnerTests',
  );
}
