import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:raoproject/constants.dart';
import 'package:raoproject/enums/shared_enum.dart';
import 'package:raoproject/screens/home_page.dart';
import 'package:raoproject/screens/login_screen.dart';
import 'package:raoproject/utils/loggers.dart';
import 'package:raoproject/utils/secure_data.dart';
import 'package:raoproject/widgets/custom_left_right_widget.dart';
import 'package:raoproject/widgets/custom_text_label_widget.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});
  final String title = "Login";

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
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
  String userName = '';
  @override
  initState() {
    super.initState();
    getData();
  }

  getData() async {
    userName = await SecureStorage.getLocalData(spUserName, SPTypes.string);
    setState(() {
      userName = userName;
    });
    // print(userName);
  }

  @override
  Widget build(BuildContext context) {
    // print(userName);
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
            UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: const BoxDecoration(color: themeBackground),
              accountName: CustomTextLabelWidget(text: userName),
              accountEmail: const Text(
                "yalamanda118@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: const FlutterLogo(),
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
          child: Column(children: <Widget>[
            const CustomLeftRightWidget(
              leftWidget:
                  CustomTextLabelWidget(text: "Categories", isBold: true),
              rightWidget: Icon(Icons.plus_one_sharp),
            ),
            const SizedBox(height: 8),
            GFItemsCarousel(
              rowCount: 4,
              itemHeight: 100,
              children: imageList.map((url) {
                return Column(children: [
                  GFAvatar(
                      backgroundImage: NetworkImage(url),
                      shape: GFAvatarShape.circle,
                      size: GFSize.LARGE),
                  const SizedBox(height: 8),
                  const CustomTextLabelWidget(text: "Name")
                ]);
              }).toList(),
            ),
            const CustomLeftRightWidget(
              leftWidget: CustomTextLabelWidget(text: "Products", isBold: true),
              rightWidget: Icon(Icons.plus_one_sharp),
            ),
            const SizedBox(height: 8),
            GFItemsCarousel(
              rowCount: 4,
              itemHeight: 30,
              children: countryList.map((name) {
                return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: GFButton(
                      onPressed: () {
                        logError(logHead, name);
                      },
                      text: name,
                      shape: GFButtonShape.pills,
                      type: GFButtonType.outline,
                    ));
              }).toList(),
            ),
          ]),
        ),
      ),
    );
  }
}
