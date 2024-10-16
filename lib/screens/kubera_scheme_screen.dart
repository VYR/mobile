import 'package:flutter/material.dart';
import 'package:kubera_scheme/screens/documents.dart';
import 'package:kubera_scheme/screens/key_invest_highlights.dart';
import 'package:kubera_scheme/screens/key_matrices_screen.dart';
import 'package:kubera_scheme/screens/kubera_scheme_faqs.dart';
import 'package:kubera_scheme/screens/snapshot_screen.dart';

class KuberaSchemeScreen extends StatelessWidget {
  const KuberaSchemeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child : Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            title: const Text('Schemes Details'),
            titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
            backgroundColor: const Color.fromRGBO(0, 92, 187, 1),
          ),
          body: SafeArea(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(14.0),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(230, 230, 250, 1), 
                            borderRadius: BorderRadius.circular(14.0), 
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start, 
                            children: <Widget>[
                              const Text(
                                "Complete your KYC in just 3 minutes to start Investing!",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(47, 44, 81, 1),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 10), 
                              MaterialButton(
                                height: 45.0,
                                minWidth: 150.0,
                                color: const Color.fromRGBO(0, 92, 187, 1),
                                textColor: Colors.white,
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6.0), 
                                      ),
                                child: const Text("Complete KYC"),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 50), 
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0), 
                            border: Border.all(
                              color: Colors.black26, 
                              width: 1.0,         
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start, 
                            children: [
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(14.0),
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
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              "assets/icon/icon.png",
                                              height: 80,
                                              width: 80,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 10,),
                                        const Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Vi Bullion',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Color.fromRGBO(42, 38, 38, 1),
                                                  fontWeight: FontWeight.w700
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                'Vi Bullion is a Gold Refinery and Trading Company',
                                                textAlign: TextAlign.left,
                                                ),
                                            ]
                                          )
                                        ),
                                      ]
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
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
                                        const SizedBox(width: 10,),
                                        ElevatedButton(
                                            onPressed: () {
                                            },
                                            style: ElevatedButton.styleFrom( // Text color
                                              side: const BorderSide(color: Colors.black, width: 1), // Border color
                                            ),
                                            child: const Text(
                                              'Supply Chain Tech',
                                              style: TextStyle(
                                                fontSize: 12, color: Colors.black
                                              )
                                            ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    const Divider(color: Colors.black26),
                                    const SizedBox(height: 10),
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(height: 8),
                                        Column(
                                          children: <Widget>[
                                            Text(
                                              'Pre-Tax IRR',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 14
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              '10.5%',
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
                                              '40 Months',
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
                                              'Coupon Rate',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 14
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              'Rs: 10.11%',
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
                                    const SizedBox(height: 20),
                                    const Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(height: 8),
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
                                              '₹10,00,000',
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                color: Color.fromRGBO(42, 38, 38, 1),
                                                fontWeight: FontWeight.w700
                                              ),
                                            ),
                                          ]
                                        ), 
                                        SizedBox(width: 30,),
                                        Column(
                                          children: <Widget>[
                                            Text(
                                              'Settlement Date',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 14
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              '21st November 2024',
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
                                    const SizedBox(height: 20),
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(height: 8),
                                        Column(
                                          children: <Widget>[
                                            Text(
                                              'Fixed Returns',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 14
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              '100%',
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
                                              'Risk Category',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 14
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              'No Risk',
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
                                    const Divider(color: Colors.black26),
                                    const SizedBox(height: 10),
                                    const Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '₹3.64 Cr Subscribed |',
                                              style: TextStyle(
                                                color: Color.fromRGBO(58, 137, 97, 1),
                                              ),
                                            ),
                                            Text(
                                              '₹5 Cr Total Deal',
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                color: Color.fromRGBO(204, 81, 36, 1),
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ]
                                        ),
                                        SizedBox(height: 10,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Text(
                                              '₹4.9 Lakhs in Progress',
                                              style: TextStyle(
                                                color: Color.fromRGBO(38, 36, 123, 1),
                                              ),
                                            ),
                                          ]
                                        )
                                      ]
                                    ),
                                  ]
                                )
                              ), 
                            ],
                          ),
                        ),
                        const SizedBox(height: 50),
                        const Column(
                          children: [
                            TabBar(
                              tabs: [
                                Tab(text: 'SnapShot'),
                                Tab(text: 'Key Invest Highlights'),
                                Tab(text: 'Key Performance Metric'),
                                Tab(text: 'FAQs'),
                                Tab(text: 'Documents'),
                              ],
                              isScrollable: true,
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  SnapShotScreen(),
                                  KeyInvestHighlightsScreen(),
                                  KeyMetricesScreen(),
                                  KuberaSchemeFaqs(),
                                  DocumentsScreen()
                                ],
                              ),
                            ),
                          ],
                        ),
                    ]
                    )
                  )
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(6.0), 
                    boxShadow: const[
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), 
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Enter Amount',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        const TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter amount to invest',
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity, // Full width button
                          child: ElevatedButton(
                            onPressed: () => {},
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              backgroundColor: const Color.fromRGBO(0, 92, 187, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8), 
                              ),
                            ),
                            child: const Text(
                              'Invest Now',
                              style: TextStyle(
                                color: Colors.white ,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                  ),
                ),
              ]
            )
          ),  
        ),
      )
    );
  }
}

