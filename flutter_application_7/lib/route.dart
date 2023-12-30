import 'package:flutter/material.dart';
import 'package:flutter_application_7/screens/extra_param_screen.dart';
import 'package:flutter_application_7/screens/home_detail_screen.dart';
import 'package:flutter_application_7/screens/home_screen.dart';
import 'package:flutter_application_7/screens/path_param_screen.dart';
import 'package:flutter_application_7/screens/query_param_screen.dart';
import 'package:flutter_application_7/shell/shell_business_screen.dart';
import 'package:flutter_application_7/shell/shell_home_screen.dart';
import 'package:flutter_application_7/shell/shell_school_screen.dart';
import 'package:flutter_application_7/shell/shell_screen.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

final router = GoRouter(
  initialLocation: '/home',
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return ShellScreen(child: child);
      },
      routes: [
        GoRoute(
          path: '/home',
          builder: (context, state) {
            String index = state.extra.toString();
            if(index == 'null') {
              index = '0';
            }
            return ShellHomeScreen(index: index);
          },
        ),
        GoRoute(
          path: '/business',
          builder: (context, state) {
            String index = state.extra.toString();
            if(index == 'null') {
              index = '1';
            }
            return ShellBusinessScreen(index: index);
          },
        ),
        GoRoute(
          path: '/school',
          builder: (context, state) {
            String index = state.extra.toString();
            if(index == 'null') {
              index = '2';
            }
            return ShellSchoolScreen(index: index);
          },
        ),
      ],
    ),
  ]
);

// 최상단 path에만 '/'로 시작
// 자식 path에는 '/'빼고 시작

// final router = GoRouter(
//   // initialLocation: '/details',    초기값 변경
//   // redirect: (context, state) {
    
//   //   /// 자동로그인
//   //   /// 토큰
//   //   String? token = null;

//   //   if (token == null){
//   //     return '/details';
//   //   }
    
//   //   return null;
//   // },
//   routes: [
//     GoRoute(
//       path: '/',
//       builder: (context, state) => const HomeScreen(),
//       routes: [
//         // GoRoute(
//         //   path: 'details',
//         //   builder: (context, state) => const HomeDetailScreen(),
//         // ),
//         GoRoute(
//           path: 'details',
//           pageBuilder: (context, state) {
//             return CustomTransitionPage(
//               child: const HomeDetailScreen(),
//               transitionsBuilder: (context, animation, secondaryAnimation, child) {
//                 return FadeTransition(
//                   opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
//                   child: child,
//                 );
//               },
//             );
//           },
//         ),
//       ]
//     ),
//     GoRoute(
//       path: '/pathParamScreen/:id',
//       builder: (context, state) {
//         String id = state.pathParameters['id'] ?? 'null';
//         return PathParamScreen(id: id);
//       }, 
//     ),
//     GoRoute(
//       path: '/queryParamScreen',
//       builder: (context, state) {
//         String id = state.uri.queryParameters['id'] ?? 'null';
//         return QueryParamScreen(id: id);
//       }, 
//     ),
//     GoRoute(
//       path: '/extraParamScreen',
//       name: 'extra',
//       builder: (context, state) {
//         String id = (state.extra ?? 'null') as String;
//         return ExtraParamScreen(id: id);
//       },
//       redirect: (context, state) {

//         Object? extra = state.extra;

//         if(extra == null) {
//           return '/';
//         }

//         return null; // 자기 자신 거 호출
//       },
//     ),
//   ],
// );