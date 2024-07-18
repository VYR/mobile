import 'package:flutter/material.dart';
import 'package:raoproject/constants.dart';
import 'package:raoproject/screens/dashboard_screen.dart';
import 'package:raoproject/screens/login_screen.dart';
import 'package:raoproject/screens/registration.dart';
import 'package:raoproject/screens/splash_screen.dart';
import 'package:raoproject/utils/loggers.dart';

void main() {
  Logger().setLogLevel(LogLevel.debugFinest);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash',
      routes: {
        '/home': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegistrationScreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: themeBackground,
        textTheme: const TextTheme(bodyMedium: TextStyle(color: themeForeground)),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
