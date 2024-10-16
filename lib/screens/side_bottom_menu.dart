import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kubera_scheme/screens/about_kubera.dart';
import 'package:kubera_scheme/screens/about_us_screen.dart';
import 'package:kubera_scheme/screens/contact_screen.dart';
import 'package:kubera_scheme/screens/dashboard_screen.dart';
import 'package:kubera_scheme/screens/investment_screen.dart';
import 'package:kubera_scheme/screens/refer_earn_screen.dart';
import 'package:kubera_scheme/screens/schemes_screens.dart';

class SideBottomMenu extends StatefulWidget {
  const SideBottomMenu({super.key});

  @override
  State<SideBottomMenu> createState() => _SideBottomMenuState();
}

class _SideBottomMenuState extends State<SideBottomMenu> {
  int _selectedIndex = 0; 
  final List<Widget> screens = [
      const SchemesScreens(),
      const DashboardScreen(),
      InvestmentScreen(),
  ];

  final List<Widget> titles = [
    const Text('Schemes'),
    const Text('Dashboard'),
    const Text('My Schemes'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: titles[_selectedIndex],
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: const Color.fromRGBO(0, 92, 187, 1),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.login_outlined,
                color: Colors.red,
              )
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Material(
              color: const Color.fromRGBO(0, 92, 187, 1),
              child: InkWell(
                onTap: () {
                  GoRouter.of(context).goNamed('profile');
                  Navigator.pop(context);
                },
                child: Container(                  
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).padding.top, bottom: 24),
                  child: const Column(
                    children: [
                      CircleAvatar(
                        radius: 52,
                        backgroundImage: NetworkImage('/assets/icon/icon.png'),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Sophia',
                        style: TextStyle(fontSize: 28, color: Colors.white),
                      ),
                      Text(
                        '@sophia.com',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: const Text('About Kubera'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutKubera()),);
                  },
                ),
                ExpansionTile(
                  title: const Text('Knowledge Center'),
                  children: [
                    ListTile(
                      title: const Text('   Blogs'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutKubera()),);
                      },
                    ),
                    ListTile(
                      title: const Text('   Webinars'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutKubera()),);
                      },
                    ),
                    ListTile(
                      title: const Text('   FAQs'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutKubera()),);
                      },
                    ),
                  ],
                ),
                // ListTile(
                //   title: const Text('Knowledge Center'),
                //   onTap: () {
                //     Navigator.pop(context);
                //     // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),);
                //   },
                // ),
                ListTile(
                  title: const Text('About Us'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutUsScreen()),);
                  },
                ),
                ListTile(
                  title: const Text('Contact Us'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ContactScreen()),);
                  },
                ),
                ListTile(
                  title: const Text('Refer & Earn'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ReferEarnScreen()),);
                  },
                ),
              ],
            )
          ],
        ),
      ),
      body: screens[_selectedIndex], 
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.insert_chart ), label: 'Schemes'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.business_center), label: 'My Schemes'),
        ],
      ),
    );
  }
}
