import 'dart:io';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_firebase/firebase_options.dart';

class FirebaseService {
  static final FirebaseService _instance = FirebaseService._internal();

  static final messaging = FirebaseMessaging.instance;
  static final analytics = FirebaseAnalytics.instance;
  static final crashlytics = FirebaseCrashlytics.instance;

  factory FirebaseService() {
    return _instance;
  }

  FirebaseService._internal();

  Future<void> initialize() async {
    if (Platform.isWindows || Platform.isLinux) {
      return;
    }

    // 1-1. firebase initialize
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);

    // 1-2. fcm request permission
    await messaging.requestPermission();

    //----------------------------------------------------------

    // 2-1 앱이 포그라운드에 있을 때 수신
    FirebaseMessaging.onMessage.listen((event) {
      // show local notification
      print('### 포그라운드: $event');
    });

    // 2-2 앱이 백그라운드에 있을 때 수신
    FirebaseMessaging.onBackgroundMessage((message) async {
      // show local notification
      print('### 백그라운드: $message');
    },);

    // //----------------------------------------------------------

    // // 3-1 앱이 켜져있는 상태에서 알림 클릭 이벤트
    // FirebaseMessaging.onMessageOpenedApp.listen((event) {
    //   print('3-1: $event');
    // });

    // // 3-2 앱이 꺼져있는 상태에서 알림 클릭 이벤트
    // FirebaseMessaging.instance.getInitialMessage().then((value) => null);

    // //----------------------------------------------------------

    // 4-1 FCM 토큰 정보 확인
    var token = await messaging.getToken();
    print('FCM token : $token');

  }
}
