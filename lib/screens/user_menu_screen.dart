import 'package:flutter/material.dart';

class UserMenuScreen extends StatelessWidget {
  const UserMenuScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          // Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            // const DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //   ),
            //   child: Text('Drawer Header'),
            // ),

            /// Header of the Drawer
            Material(
              color: Colors.blueAccent,
              child: InkWell(
                onTap: () {
                  /// Close Navigation drawer before
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
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.favorite_border),
                  title: const Text('My Referrals'),
                  onTap: () {
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => FavouriteScreen()),);
                  },
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
                const Divider(
                  color: Colors.black45,
                ),
                ListTile(
                  leading: const Icon(Icons.account_tree_outlined),
                  title: const Text('Plugins'),
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
    );
  }
}
