// import 'package:flutter/material.dart';
// import 'package:kubera_scheme/screens/dashboard_dashboard.dart';
// import 'package:kubera_scheme/screens/income_dashboard.dart';
// import 'package:kubera_scheme/screens/incomplete_kyc_dashboard.dart';
// import 'package:kubera_scheme/screens/kubera_balance.dart';
// import 'package:kubera_scheme/screens/my_schemes.dart';
// import 'package:kubera_scheme/screens/referral_screen.dart';

// class DashboardScreen extends StatelessWidget {
//   const DashboardScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             // Material(
//             //   color: Colors.blueAccent,
//             //   child: InkWell(
//             //     onTap: () {
//             //       Navigator.pop(context);
//             //     },
//             //     child: Container(
//             //       padding: EdgeInsets.only(
//             //           top: MediaQuery.of(context).padding.top, bottom: 24),
//             //       child: const Column(
//             //         children: [
//             //           CircleAvatar(
//             //             radius: 52,
//             //             backgroundImage: NetworkImage('/assets/icon/icon.png'),
//             //           ),
//             //           SizedBox(
//             //             height: 12,
//             //           ),
//             //           Text(
//             //             'Sophia',
//             //             style: TextStyle(fontSize: 28, color: Colors.white),
//             //           ),
//             //           Text(
//             //             '@sophia.com',
//             //             style: TextStyle(fontSize: 14, color: Colors.white),
//             //           ),
//             //         ],
//             //       ),
//             //     ),
//             //   ),
//             // ),

//             Column(
//               children: [
//                 ListTile(
//                   leading: const Icon(Icons.home_outlined),
//                   title: const Text('Dashboard'),
//                   onTap: () {
//                     // if KYC completed
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardOneScreen()),);
//                     // if KYC not completed
//                     // Navigator.push(context, MaterialPageRoute(builder: (context) => const IncompleteKycDashboardScreen()),);
//                   },
//                 ),
//                 ListTile(
//                   leading: const Icon(Icons.favorite_border),
//                   title: const Text('My Schemes'),
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => const MySchemesScreen()),);
//                   },
//                 ),
//                 ListTile(
//                   leading: const Icon(Icons.workspaces),
//                   title: const Text('My Kubera Balance'),
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => const KuberaBalanceScreen()),);
//                   },
//                 ),
//                 ListTile(
//                   leading: const Icon(Icons.update),
//                   title: const Text('My Referrals'),
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => const ReferralScreen()),);
//                   },
//                 ),
//                 ListTile(
//                   leading: const Icon(Icons.account_tree_outlined),
//                   title: const Text('Income Certificate'),
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => const IncomeDashboardScreen()),);
//                   },
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
    
      
//     );
//   }
// }



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
    // const IncompleteKycDashboardScreen(),
    const MySchemesScreen(),
    const KuberaBalanceScreen(),
    const ReferralScreen(),
    const IncomeDashboardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.home_outlined),
                    title: const Text('Dashboard'),
                    onTap: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                      Navigator.pop(context); // Close the drawer
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.favorite_border),
                    title: const Text('My Schemes'),
                    onTap: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.workspaces),
                    title: const Text('My Kubera Balance'),
                    onTap: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.update),
                    title: const Text('My Referrals'),
                    onTap: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.notifications_outlined),
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

