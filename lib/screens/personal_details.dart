import 'package:flutter/material.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          // child:Container(
          // child: DecoratedBox(
          //   decoration: BoxDecoration(
          //       border: Border.all(),
          //       borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            children: [
              // Padding(padding: EdgeInsets.all(20.0)),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Full Name",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0.0),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      // prefix: Icon(Icons.phone_android),
                      // suffixIcon: Icon(Icons.arrow_forward_ios),
                      // labelText: "Enter Email",
                      hintText: "Enter Name",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                      border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Email",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0.0),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      // prefix: Icon(Icons.phone_android),
                      // suffixIcon: Icon(Icons.arrow_forward_ios),
                      // labelText: "Enter Email",
                      hintText: "Enter Email",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                      border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Mobile Number",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0.0),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      // prefix: Icon(Icons.phone_android),
                      // suffixIcon: Icon(Icons.arrow_forward_ios),
                      // labelText: "Enter Email",
                      hintText: "Enter Mobile Number",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                      border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "PAN",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0.0),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      // prefix: Icon(Icons.phone_android),
                      // suffixIcon: Icon(Icons.arrow_forward_ios),
                      // labelText: "Enter Email",
                      hintText: "PAN",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                      border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "KYC",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0.0),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      // prefix: Icon(Icons.phone_android),
                      // suffixIcon: Icon(Icons.arrow_forward_ios),
                      // labelText: "Enter Email",
                      hintText: "KYC",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                      border: OutlineInputBorder()),
                ),
              ),
            ],
          ),
        ),
        //),
      ),
      // );
    );
  }
}
