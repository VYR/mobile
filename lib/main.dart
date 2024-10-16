import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kubera_scheme/screens/address_screen.dart';
import 'package:kubera_scheme/screens/bank_account_screen.dart';
import 'package:kubera_scheme/screens/bottom_navigation_part.dart';
import 'package:kubera_scheme/screens/dashboard_screen.dart';
import 'package:kubera_scheme/screens/demart_account_screen.dart';
import 'package:kubera_scheme/screens/enter_otp_screen.dart';
import 'package:kubera_scheme/screens/faqs_screens.dart';
//import 'package:kubera_scheme/screens/faqs_screens.dart';
import 'package:kubera_scheme/screens/investment_screen.dart';
import 'package:kubera_scheme/screens/kubera_scheme_faqs.dart';
import 'package:kubera_scheme/screens/login_screen.dart';
import 'package:kubera_scheme/screens/nominee_screen.dart';
import 'package:kubera_scheme/screens/personal_details.dart';
import 'package:kubera_scheme/screens/profile_screens.dart';
import 'package:kubera_scheme/screens/refer_earn_faqs_screen.dart';
import 'package:kubera_scheme/screens/schemes_screens.dart';
import 'package:kubera_scheme/screens/set_pin_screen.dart';
import 'package:kubera_scheme/screens/side_bottom_menu.dart';
import 'package:kubera_scheme/screens/splash_screen.dart';
import 'package:kubera_scheme/screens/user_menu_screen.dart';
import 'package:kubera_scheme/screens/webview_screens/webview_profile_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
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
        builder: (context, state) => const EnterOtpScreen(
          mobileNumber: '7867565465',
        ),
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
        name: 'bank-account',
        path: '/bank-account',
        builder: (context, state) => const BankAccountScreen(),
      ),
      GoRoute(
        name: 'demart-account',
        path: '/demart-account',
        builder: (context, state) => const DemartAccountScreen(),
      ),
      GoRoute(
        name: 'nominee',
        path: '/nominee',
        builder: (context, state) => const NomineeScreen(),
      ),
      GoRoute(
        name: 'faqs',
        path: '/faqs',
        builder: (context, state) => const FaqsScreens(),
      ),
      GoRoute(
        name: 'user-menu',
        path: '/user-menu',
        builder: (context, state) => const UserMenuScreen(),
      ),
      GoRoute(
        name: 'bottom-navigation',
        path: '/bottom-navigation',
        builder: (context, state) => const BottomNavigationPart(),
      ),
      GoRoute(
        name: 'main-page',
        path: '/main-page',
        builder: (context, state) => const SideBottomMenu(),
      ),
      GoRoute(
        name: 'refer-earn-faqs',
        path: '/refer-earn-faqs',
        builder: (context, state) => const ReferEarnFaqsScreen(),
      ),
      GoRoute(
        name: 'kubera-faqs',
        path: '/kubera-faqs',
        builder: (context, state) => const KuberaSchemeFaqs(),
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
