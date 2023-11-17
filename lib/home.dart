import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:raoproject/constants.dart';
import 'package:raoproject/screens/home_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  final String title = "Login";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> imageList = [
    "https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Ultraprocessed-food-58d54c3.jpg",
    "https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg",
    "https://cdn.britannica.com/35/225835-050-A5CC289A/Indian-one-pot-meal-for-party.jpg",
    "https://c.ndtvimg.com/2023-05/3rikofk8_dosa_625x300_09_May_23.jpg",
    "https://mycitychennai.com/wp-content/uploads/2017/06/8526628530_91ea7979f4_b.jpg"
  ];
  // Country List
  final List<String> countryList = [
    "PAKISTAN",
    "INDIA",
    "JAPAN",
    "AUSTRALIA",
    "RUSSIA",
    "BELIZE"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Navigation Drawer',
        ),
        backgroundColor: themeBackground,
        foregroundColor: themeForeground,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(color: themeBackground),
              accountName: Text(
                "Yellamandarao Vemula",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "yalamanda118@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: FlutterLogo(),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text('Page 1'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.train,
              ),
              title: const Text('Page 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: CarouselSlider(
                  items: imageList.map((e) {
                    return Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.network(e.trim().toString(),
                            fit: BoxFit.fill, width: 1000),
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 200,
                  ),
                )),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: CarouselSlider(
                  items: imageList.map((e) {
                    return Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.network(e.trim().toString(),
                            fit: BoxFit.fill, width: 500),
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 100,
                  ),
                )),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: CarouselSlider(
                  items: imageList.map((e) {
                    return Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.network(e.trim().toString(),
                            fit: BoxFit.fill, width: 1000),
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 200,
                  ),
                )),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: CarouselSlider(
                  items: imageList.map((e) {
                    return Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.network(e.trim().toString(),
                            fit: BoxFit.fill, width: 1000),
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 200,
                  ),
                )),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: CarouselSlider(
                  items: imageList.map((e) {
                    return Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.network(e.trim().toString(),
                            fit: BoxFit.fill, width: 1000),
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 200,
                  ),
                )),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: CarouselSlider(
                  items: imageList.map((e) {
                    return Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.network(e.trim().toString(),
                            fit: BoxFit.fill, width: 1000),
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 200,
                  ),
                )),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: CarouselSlider(
                  items: imageList.map((e) {
                    return Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.network(e.trim().toString(),
                            fit: BoxFit.fill, width: 1000),
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 200,
                  ),
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          label: 'Earn Money',
          backgroundColor: themeBackground,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.view_list,
          ),
          label: 'My Tasks',
          backgroundColor: themeBackground,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.task,
          ),
          label: 'Post a Task',
          backgroundColor: themeBackground,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.message,
          ),
          label: 'My Messages',
          backgroundColor: themeBackground,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.more_vert,
          ),
          label: 'More',
          backgroundColor: themeBackground,
        ),
      ]),
    );
  }
}
