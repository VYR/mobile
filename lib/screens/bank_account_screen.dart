import 'package:flutter/material.dart';

class BankAccountScreen extends StatelessWidget {
  const BankAccountScreen({super.key});
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
                  "Here are the details ot the bank account linked to your profile on kuberascheme.com",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w200),
                ),
              ),
              SizedBox(
                height: .0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Account Holder Name",
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
                      hintText: "Enter Account Holder Name",
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
                  "Account Number",
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
                      hintText: "Enter Account Number",
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
                  "IFSC Code",
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
                      hintText: "Enter IFSC Code",
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
