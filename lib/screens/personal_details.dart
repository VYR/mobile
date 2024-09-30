import 'package:flutter/material.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Full Name",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: SizedBox(
              height: 60,
              child: Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text('ViBullion'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Mobile Number ",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: SizedBox(
              height: 60,
              child: Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text('+91 | 9876543210'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Email ",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: SizedBox(
              height: 60,
              child: Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text('vibullionatgmail.com'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "PAN ",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: SizedBox(
              height: 60,
              child: Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text('ABCDE1234F'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment.topLeft,
          //   child: Text(
          //     "Full Name",
          //     style: TextStyle(
          //         fontSize: 15,
          //         color: Colors.black,
          //         fontWeight: FontWeight.w900),
          //   ),
          // ),
          // Padding(
          //   padding: EdgeInsets.all(20.0),
          //   child: TextField(
          //     keyboardType: TextInputType.phone,
          //     maxLength: 10,
          //     maxLines: 10,
          //     decoration: InputDecoration(
          //         prefix: Icon(Icons.phone_android),
          //         suffixIcon: Icon(Icons.arrow_forward_ios),
          //         labelText: "Enter Email",
          //         hintText: "Enter Email",
          //         hintStyle: TextStyle(fontSize: 30, color: Colors.black),
          //         border: OutlineInputBorder()),
          //   ),
          // ) ---> Form field
        ],
      ),
    );
  }
}
