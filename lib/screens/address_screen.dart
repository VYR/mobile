import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Address",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: SizedBox(
              height: 80,
              child: Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                          'B 15 & 16, Industrial Estate, Sanath Nagar Road, Hyderabad, Telanagana - 500018.'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "City",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: SizedBox(
              height: 80,
              child: Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text('Hyderabad'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "State",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: SizedBox(
              height: 80,
              child: Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text('Telangana'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Country",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: SizedBox(
              height: 80,
              child: Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text('India'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Pin Code",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: SizedBox(
              height: 80,
              child: Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text('500018'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: SizedBox(
              height: 100,
              child: Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                          'This address is based on the address proof document that you uploaded during KYC. If you want to update your address vibullion.com'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
