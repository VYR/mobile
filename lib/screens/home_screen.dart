import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:raoproject/constants.dart';
import 'package:raoproject/screens/home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  final String title = "Login";

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
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
      appBar: GFAppBar(
        /*leading: GFIconButton(
          icon: const Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () {},
          type: GFButtonType.transparent,
        ),*/
        searchBar: true,
        title: const Text("GF Appbar"),
        actions: <Widget>[
          GFIconButton(
            icon: const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed: () {},
            type: GFButtonType.transparent,
          ),
        ],
      ),
      /* AppBar(
        centerTitle: true,
        title: const Text(
          'Navigation Drawer',
        ),
        backgroundColor: themeBackground,
        foregroundColor: themeForeground,
      ),*/
      drawer: GFDrawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            GFDrawerHeader(
              currentAccountPicture: GFAvatar(
                radius: 80.0,
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg"),
              ),
              otherAccountsPictures: <Widget>[
                Image(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg"),
                  fit: BoxFit.cover,
                ),
                GFAvatar(
                  child: Text("ab"),
                )
              ],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('user name'),
                  Text('user@userid.com'),
                ],
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: null,
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: null,
            ),
          ],
        ),
      ),
      /* Drawer(
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
                    MaterialPageRoute(builder: (context) => const HomePage()));
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
      ),*/
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: GFItemsCarousel(
                rowCount: 1,
                children: imageList.map(
                  (url) {
                    return Container(
                      margin: const EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5.0)),
                        child: GFImageOverlay(
                          height: 200,
                          width: 300,
                          image: NetworkImage(url),
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.3), BlendMode.darken),
                          child: const Center(
                            child: Text('Light Overlay',
                                style: TextStyle(color: GFColors.LIGHT)),
                          ),
                        ),
                        /* Image.network(url,
                            fit: BoxFit.cover, width: 1000.0),*/
                      ),
                    );
                  },
                ).toList(),
              ),
              /* CarouselSlider(
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
                  ),*/
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: GFCarousel(
                items: imageList.map(
                  (url) {
                    return GFCard(
                      boxFit: BoxFit.cover,
                      image: Image.network(
                        url.trim().toString(),
                        height: 100,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                      showImage: true,
                      titlePosition: GFPosition.end,
                      title: GFListTile(
                        avatar: GFAvatar(
                          backgroundImage: NetworkImage(url),
                        ),
                        title: const Text('Card Title'),
                        subTitle: const Text('Card Sub Title'),
                      ),
                      content: const Text(
                          "Some quick example text to build on the card"),
                      buttonBar: GFButtonBar(
                        children: <Widget>[
                          GFButton(
                            onPressed: () {},
                            text: 'Buy',
                          ),
                          GFButton(
                            onPressed: () {},
                            text: 'Cancel',
                          ),
                        ],
                      ),
                    );
                  },
                ).toList(),
                onPageChanged: (index) {
                  setState(() {
                    index;
                  });
                },
              ),
              /* CarouselSlider(
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
                )*/
            ),
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
                        child: GFImageOverlay(
                          height: 200,
                          width: 200,
                          image: NetworkImage(e.trim().toString()),
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.4), BlendMode.darken),
                          child: const Center(
                            child: Text('Light Overlay',
                                style: TextStyle(color: GFColors.LIGHT)),
                          ),
                        ),
                        /*Image.network(e.trim().toString(),
                            fit: BoxFit.fill, width: 1000),*/
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
