import 'package:flutter/material.dart';
import 'package:kubera_scheme/screens/dashboard_dashboard.dart';
import 'package:kubera_scheme/screens/income_dashboard.dart';
import 'package:kubera_scheme/screens/incomplete_kyc_dashboard.dart';
import 'package:kubera_scheme/screens/kubera_balance.dart';
import 'package:kubera_scheme/screens/my_schemes.dart';
import 'package:kubera_scheme/screens/referral_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0; 

  final List<Widget> _pages = [
    const DashboardOneScreen(),
    // If kyc doesn't complete
    // const IncompleteKycDashboardScreen(),
    const MySchemesScreen(),
    const KuberaBalanceScreen(),
    const ReferralScreen(),
    const IncomeDashboardScreen(),
  ];

  final List<Widget> titles = [
    const Text('Dashboard'),
    const Text('My Schemes'),
    const Text('My Kubera Balance'),
    const Text('My Referrals'),
    const Text('Income Certificate'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: titles[_selectedIndex],
          titleTextStyle: const TextStyle(color: Colors.black, fontSize: 20),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Column(
                children: [
                  ListTile(
                    title: const Text('Dashboard'),
                    onTap: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('My Schemes'),
                    onTap: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('My Kubera Balance'),
                    onTap: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('My Referrals'),
                    onTap: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Income Certificate'),
                    onTap: () {
                      setState(() {
                        _selectedIndex = 4;
                      });
                      Navigator.pop(context);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
      ),
    );
  }
}