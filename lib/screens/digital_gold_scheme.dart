import 'package:flutter/material.dart';

class DigitalGoldSchemeScreen extends StatelessWidget {
  const DigitalGoldSchemeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Schemes Details'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: const Color.fromRGBO(0, 92, 187, 1),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                MaterialButton(
                  height: 45.0,
                  minWidth: 150.0,
                  color: const Color.fromRGBO(113, 0, 153, 1),
                  textColor: Colors.white,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0), 
                        ),
                  child: const Text("Digital Gold"),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0), 
                    border: Border.all(
                      color: Colors.black, 
                      width: 1.0,         
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(245, 237, 255, 1), 
                          borderRadius: BorderRadius.circular(14.0), 
                        ),
                        child: const Text(
                          "Balance Risk with Insurance Protection",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(42, 38, 38, 1),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white, 
                          borderRadius: BorderRadius.circular(14.0), 
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start, 
                          children: <Widget>[
                            const Text(
                                "Safeguard your investment with Insurance Protection using Trade Credit Insurance",
                                style: TextStyle(
                                  color: Color.fromRGBO(42, 38, 38, 1),
                                ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                ElevatedButton(
                                    onPressed: () {
                                    },
                                    style: ElevatedButton.styleFrom( // Text color
                                      side: const BorderSide(color: Colors.black, width: 1), // Border color
                                    ),
                                    child: const Text(
                                      'Invoice Discounting',
                                      style: TextStyle(
                                        fontSize: 12, color: Colors.black
                                      )
                                    ),
                                  ),
                                ElevatedButton(
                                    onPressed: () {
                                    },
                                    style: ElevatedButton.styleFrom( // Text color
                                      side: const BorderSide(color: Colors.black, width: 1), // Border color
                                    ),
                                    child: const Text(
                                      'Multiple Sectors',
                                      style: TextStyle(
                                        fontSize: 12, color: Colors.black
                                      )
                                    ),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                 ElevatedButton(
                                    onPressed: () {
                                    },
                                    style: ElevatedButton.styleFrom( // Text color
                                      side: const BorderSide(color: Colors.black, width: 1), // Border color
                                    ),
                                    child: const Text(
                                      'Escrow Controlled',
                                      style: TextStyle(
                                        fontSize: 12,color: Colors.black
                                      )
                                    ),
                                  ),
                                 ElevatedButton(
                                    onPressed: () {
                                    },
                                    style: ElevatedButton.styleFrom( // Text color
                                      side: const BorderSide(color: Colors.black, width: 1), // Border color
                                    ),
                                    child: const Text(
                                      'Secured',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black
                                      )
                                    ),
                                  ),
                              ]
                            ),
                            const SizedBox(height: 10),
                            const Divider(color: Colors.black45),
                            const SizedBox(height: 10),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 8),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'Pre-tax IRR',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '11.75%',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color.fromRGBO(42, 38, 38, 1),
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ]
                                ), 
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'Tenure',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '90D',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        color: Color.fromRGBO(42, 38, 38, 1),
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ]
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'Min. Investment',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '₹25,000',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        color: Color.fromRGBO(42, 38, 38, 1),
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ]
                                ),
                              ]
                            ),
                            const SizedBox(height: 10),
                            const Divider(color: Colors.black45),
                            const SizedBox(height: 10),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 8),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'Risk Category',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'No Risk',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color.fromRGBO(42, 38, 38, 1),
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ]
                                ), 
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'Insured By',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Vi Bullion',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        color: Color.fromRGBO(42, 38, 38, 1),
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ]
                                ),
                                SizedBox(width: 40),
                              ]
                            ),
                            const SizedBox(height: 10),
                            const Divider(color: Colors.black45),
                            const SizedBox(height: 10),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Deal Size',
                                  style: TextStyle(
                                    color: Color.fromRGBO(42, 38, 38, 1),
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                                Text(
                                  '80% Filled',
                                  style: TextStyle(
                                    color: Color.fromRGBO(204, 81, 36, 1),
                                    fontWeight: FontWeight.w800
                                  ),
                                ),
                              ]
                            ),
                          ]
                        )
                      ), 
                    ],
                  ),
                ),
              ]
            )
          )
        )
      )
    );
  }
}