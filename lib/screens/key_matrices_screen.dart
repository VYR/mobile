import 'package:flutter/material.dart';

class KeyMetricesScreen extends StatelessWidget {
  const KeyMetricesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Key Performance Metrics',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color.fromRGBO(38, 36, 123, 1),
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'About Buyer',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color.fromRGBO(38, 36, 123, 1),
                    fontWeight: FontWeight.w700,fontSize: 14
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '• Please refer Product Note',
                ),
                SizedBox(height: 10),
                Text(
                  'About Seller',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color.fromRGBO(38, 36, 123, 1),
                    fontWeight: FontWeight.w700,fontSize: 14
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '• Power2SME provides B2B services through its digital ecosystem which delivers raw material procurement at competitive prices, MRO procurement, and access to finance to smaller SMEs with an objective to provided them with higher efficiencies and profitability.'
                ),
                SizedBox(height: 6),
                Text(
                  '• Started in 2012 has raise INR 400 Cr+ from marquee investors including Accel Partners, Inventus, IFC, Kalaari Capital, Nandan Nilekani.',
                ),
                SizedBox(height: 6),
                Text(
                  '• The Business is promoted by Mr. R.Narayan who has a strong corporate background with 26 years+ of experience',
                ),
                SizedBox(height: 16),
                Text(
                  'About Bank',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color.fromRGBO(38, 36, 123, 1),
                    fontWeight: FontWeight.w700,fontSize: 14
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '• Please refer Product Note',
                ),
              ]
            )
          )
        )
      )
    );
  }
}

