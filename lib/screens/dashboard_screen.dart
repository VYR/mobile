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
const String logHead = 'Dashboard';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
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
  Map userInfo = {
    "userId": '',
    "email": '',
    "userName": '',
    "role":'',
    "token":''
  };
  @override
  initState() {
    super.initState();
    getData();
  }

  getData() async {
    userInfo[spUserName] = await SecureStorage.getLocalData(spUserName, SPTypes.string);
    userInfo[spEmail] = await SecureStorage.getLocalData(spEmail, SPTypes.string);
    userInfo[spUserId] = await SecureStorage.getLocalData(spUserId, SPTypes.string);
    userInfo[spRole] = await SecureStorage.getLocalData(spRole, SPTypes.string);
    logDebug(logHead, "role: ${userInfo[spRole]}");
    logDebug(logHead, "token: ${userInfo[spToken]}");
    setState(() {
      userInfo = userInfo;
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
        backgroundColor: const Color.fromRGBO(40, 28, 9, 1),
        shadowColor: Colors.white,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: const BoxDecoration(color: themeBackground),
              accountName: CustomTextLabelWidget(text: userInfo[spUserName], color: TextLabelColors.white),
              accountEmail: Text(
                userInfo[spEmail],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: Image.asset('assets/images/logo.png',width: MediaQuery.of(context).size.width/2,
                  height: MediaQuery.of(context).size.height/2,
                  alignment: Alignment.center),
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: const Icon(
                Icons.home,
              ),
              title: const Text('Dashboard'),
              onTap: () {
                setState(() {
                              
                  Navigator.of(context).pushReplacementNamed('/test');
                  }
                );
              },
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: const Icon(
                Icons.train,
              ),
              title: const Text('Schemes'),
              onTap: () {
                () => Navigator.of(context).pushReplacementNamed('/test');
              },
            ),
            ListTile(
                iconColor: Colors.white,
                textColor: Colors.white,
                leading: const Icon(
                Icons.train,
              ),
              title: const Text('Scheme Members'),
              onTap: () {
              Navigator.pop(context);
              },
          ), 
            ListTile(
                iconColor: Colors.white,
                textColor: Colors.white,
                leading: const Icon(
                Icons.train,
              ),
              title: const Text('Transactions'),
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
                  CustomTextLabelWidget(text: "Categories", isBold: true, color: TextLabelColors.white),
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
                 const CustomTextLabelWidget(text: "Name", color: TextLabelColors.white)
                ]);
              }).toList(),
            ),
            const CustomLeftRightWidget(
              leftWidget: CustomTextLabelWidget(text: "Products", isBold: true, color: TextLabelColors.white),
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
