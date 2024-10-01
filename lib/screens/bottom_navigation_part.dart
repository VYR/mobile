// Not using. It's Already in SideBottomMenu
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kubera_scheme/screens/dashboard_screen.dart';
import 'package:kubera_scheme/screens/investment_screen.dart';
import 'package:kubera_scheme/screens/schemes_screens.dart';
import 'package:kubera_scheme/screens/webview_screens/provider.dart';

class BottomNavigationPart extends ConsumerWidget {
  const BottomNavigationPart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexBottomNavbar = ref.watch(indexBottomNavbarProvider);
    final List<Widget> screens = [
      const DashboardScreen(),
      const SchemesScreens(),
      const InvestmentScreen(),
    ];
    return Scaffold(
      body: screens[indexBottomNavbar], 
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottomNavbar,
        onTap: (value) {
          ref.read(indexBottomNavbarProvider.notifier).update((state) => value);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Schemes'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Investment'),
        ],
      ),
    );
  }
}
