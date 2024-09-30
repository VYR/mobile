import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kubera_scheme/screens/address_screen.dart';
import 'package:kubera_scheme/screens/dashboard_screen.dart';
import 'package:kubera_scheme/screens/enter_otp_screen.dart';
import 'package:kubera_scheme/screens/investment_screen.dart';
import 'package:kubera_scheme/screens/login_screen.dart';
import 'package:kubera_scheme/screens/personal_details.dart';
import 'package:kubera_scheme/screens/profile_screens.dart';
import 'package:kubera_scheme/screens/schemes_screens.dart';
import 'package:kubera_scheme/screens/set_pin_screen.dart';
import 'package:kubera_scheme/screens/splash_screen.dart';
import 'package:kubera_scheme/screens/user_menu_screen.dart';
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
        name:
            'home', // Optional, add name to your routes. Allows you navigate by name instead of path
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        name: 'shope',
        path: '/shope',
        builder: (context, state) => const WebViewProfile(),
      ),
      GoRoute(
        name: 'login',
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        name: 'set-pin',
        path: '/set-pin',
        builder: (context, state) => const SetPinScreen(),
      ),
      GoRoute(
        name: 'dashboard',
        path: '/dashboard',
        builder: (context, state) => const DashboardScreen(),
      ),
      GoRoute(
        name: 'investment',
        path: '/investment',
        builder: (context, state) => const InvestmentScreen(),
      ),
      GoRoute(
        name: 'otp',
        path: '/otp',
        builder: (context, state) => const EnterOtpScreen(),
      ),
      GoRoute(
        name: 'schemes',
        path: '/schemes',
        builder: (context, state) => const SchemesScreens(),
      ),
      GoRoute(
        name: 'profile',
        path: '/profile',
        builder: (context, state) => const ProfileScreens(),
      ),
      GoRoute(
        name: 'personal',
        path: '/personal',
        builder: (context, state) => const PersonalDetails(),
      ),
      GoRoute(
        name: 'address',
        path: '/address',
        builder: (context, state) => const AddressScreen(),
      ),
      GoRoute(
        name: 'user-menu',
        path: '/user-menu',
        builder: (context, state) => const UserMenuScreen(),
      ),
    ],
  );

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
