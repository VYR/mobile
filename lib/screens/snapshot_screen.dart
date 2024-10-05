import 'package:flutter/material.dart';

class SnapShotScreen extends StatelessWidget {
  const SnapShotScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                    Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white, 
                          borderRadius: BorderRadius.circular(14.0), 
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start, 
                          children: <Widget>[
                            Text(
                              'SnapShot',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color.fromRGBO(38, 36, 123, 1),
                                fontWeight: FontWeight.w700,fontSize: 16
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 8),
                                SizedBox(
                                  width: 130,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Total Deal Size',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 14
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        '₹1.8 Cr',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Color.fromRGBO(38, 36, 123, 1),
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ]
                                  ),
                                ),
                                SizedBox(width: 30,),
                                SizedBox(
                                  width: 180,
                                  child:Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Vendor',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Buyume',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        color: Color.fromRGBO(38, 36, 123, 1),
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ]
                                ),
                                )
                              ]
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.black26),
                            SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 8),
                                SizedBox(
                                  width: 130,
                                  child:
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Recourse On',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Buyume',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color.fromRGBO(38, 36, 123, 1),
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ]
                                ), 
                                ),
                                SizedBox(width: 30,),
                                 SizedBox(
                                  width: 180,
                                  child:
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Payment Frequency',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'At Maturity',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color.fromRGBO(38, 36, 123, 1),
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ]
                                ),
                                 )
                              ]
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.black26),
                            SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 8),
                                 SizedBox(
                                  width: 130,
                                  child:
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Payment Obligor',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Buyume',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color.fromRGBO(38, 36, 123, 1),
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ]
                                ),
                                 ), 
                                SizedBox(width: 30,), 
                                 SizedBox(
                                  width: 180,
                                  child:
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Tax Deducted at Source',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '10%',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        color: Color.fromRGBO(38, 36, 123, 1),
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ]
                                ),
                                 )
                              ]
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.black26),
                            SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 8),
                                 SizedBox(
                                  width: 130,
                                  child:
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                        color: Color.fromRGBO(38, 36, 123, 1),
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ]
                                ),
                                 ), 
                                SizedBox(width: 30,), 
                                 SizedBox(
                                  width: 180,
                                  child:
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                      '21st Nov 2024',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color.fromRGBO(38, 36, 123, 1),
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ]
                                ),
                                 )
                              ]
                            ),
                            SizedBox(height: 30),
                            Text(
                              'Opportunity Summary',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color.fromRGBO(38, 36, 123, 1),
                                fontWeight: FontWeight.w700,fontSize: 16
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '• Bank Guarantee backed Invoice discounting, with escrow control on buyer repayments as additional security.',
                            ),
                            SizedBox(height: 6),
                            Text(
                              '• Bank Guarantee covers 100% of the Investment amount and Interest.',
                            ),
                            SizedBox(height: 6),
                            Text(
                              '• Short tenor opportunity with risk-adjusted returns.',
                            ),
                            SizedBox(height: 6),
                            Text(
                              '• Lorry Receipt / Dispatch Details taken as proof of delivery (POD).',
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Risk Category Disclosure',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color.fromRGBO(38, 36, 123, 1),
                                fontWeight: FontWeight.w700,fontSize: 16
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Risk Category provided above for each opportunity are internal to Kubera scheme and are not provided by any third-party agencies.',
                            ),
                          ]
                        )
                      ),
              ]
            )
          )
        )
      )
    );
  }
}