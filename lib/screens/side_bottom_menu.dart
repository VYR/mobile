import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kubera_scheme/screens/dashboard_screen.dart';
import 'package:kubera_scheme/screens/investment_screen.dart';
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
      const InvestmentScreen(),
  ];

  final List<Widget> titles = [
    const Text('Schemes'),
    const Text('Dashboard'),
    const Text('My Investments'),
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
              ))
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

            /// Header Menu items
            Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.home_outlined),
                  title: const Text('Income Certificate'),
                  onTap: () {
                    Navigator.pop(context);
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.favorite_border),
                  title: const Text('My Referrals'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.workspaces),
                  title: const Text('Reset Kubera PIN'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.update),
                  title: const Text('Logout'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.notifications_outlined),
                  title: const Text('Notifications'),
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
      body: screens[_selectedIndex], // Show the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.insert_chart ), label: 'Schemes'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.business_center), label: 'My Investments'),
        ],
      ),
    );
  }
}
