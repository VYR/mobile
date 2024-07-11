import 'package:flutter/material.dart';
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
        '/splash': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegistrationScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(40, 28, 9, 1),
        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
