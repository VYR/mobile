import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kubera_scheme/screens/splash_screen.dart';
import 'package:kubera_scheme/screens/webview_screens/basic_webview_screen.dart';
import 'package:kubera_scheme/screens/webview_screens/webview_profile_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // GoRouter configuration
  final _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'home', // Optional, add name to your routes. Allows you navigate by name instead of path
        path: '/',
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        name: 'shope',
        path: '/shope',
        builder: (context, state) => const WebViewProfile(),
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

