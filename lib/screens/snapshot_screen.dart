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
                          fontWeight: FontWeight.w700,fontSize: 18
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
                                  '₹ 10Lacs upto 5Cr',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
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
                                'Viindhya Bullion',
                                textAlign: TextAlign.end,
                                style: TextStyle(
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
                            child: Column(
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
                                  'Viindhya Bullion',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
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
                                    'Monthly Returns',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
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
                                    'Viindhya Bullion',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700
                                    ),
                                  ),
                                ]
                              ),
                          ), 
                          SizedBox(width: 30,), 
                          SizedBox(
                            width: 180,
                            child: Column(
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
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Tax Deducted at Source',
                                  style: TextStyle(fontSize: 14),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '5% (TDS is not automatically returned; rather, you offset it against your tax liability when you file your annual income tax return.)',
                                  overflow: TextOverflow.ellipsis, 
                                  maxLines: 4, 
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Opportunity Summary',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,fontSize: 16
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Gauranteed 100% returns with invoices.',
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Risk Category Disclosure',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,fontSize: 16
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Risk Category provided is internal to the Kubera Scheme and not from any third-party agencies. Please invest wisely.',
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