import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Kubera'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(239, 255, 247, 1), 
                    borderRadius: BorderRadius.circular(14.0), 
                  ),
                  child: const Column(
                    children: <Widget>[
                      Text(
                        'VIINDHYA GROUP AT A GLANCE',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Color.fromRGBO(62, 0, 117, 1)),
                      ),
                      SizedBox(height: 16,),
                      Text('We are the Bullion Refinery Company engaged in conglomerate trades encircling numerous prosperous trades created with innovation at its core by means of trust amongst its customers spread all around the country with major stake of customers from South India. With great pleasure and gratitude, we welcome you to the cherished Bullion business space, creating exhilarating yet challenging opportunities with the frame work of conducive strategies, quality products with efficient services, by maintaining ethical values. Our well-organized approach to address the demand and supply chain is manifestation of our commitment to vivid and transparent correspondences with all our stake holders catering a plethora of services to the wider customer range all across India.'),
                      SizedBox(height: 8,),
                      Text('Our emphasis is not only what we profit out of the trading but also to establish and encourage the activity that transforms wellbeing and prosperity for all the customers as well as those who are directly or indirectly connected with us, where the word “PROFIT” becomes only a by product of what we all do as entirety.')
                    ],
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