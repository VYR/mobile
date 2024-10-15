import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});
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
                  "Address",
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
                      hintText: "Enter Address",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                      border: OutlineInputBorder()),
                  maxLines: 5,
                  minLines: 1,
                ),
              ),
              SizedBox(
                height: 20.0,
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
                padding: EdgeInsets.all(0.0),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      // prefix: Icon(Icons.phone_android),
                      // suffixIcon: Icon(Icons.arrow_forward_ios),
                      // labelText: "Enter Email",
                      hintText: "Enter City",
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
                  "State",
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
                      hintText: "Enter State",
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
                  "Country",
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
                      hintText: "Enter Country",
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
                  "Pin Code",
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
                      hintText: "Enter Pin Code",
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
                  "This Address is based on the address proof document that you uploaded during KYC. If You want to update Your Address , please write to us at kuberaScheme.com",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
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
