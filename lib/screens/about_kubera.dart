import 'package:flutter/material.dart';

class AboutKubera extends StatelessWidget {
  const AboutKubera({super.key});
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
                    color: const Color.fromRGBO(127, 57, 222, 1), 
                    borderRadius: BorderRadius.circular(14.0), 
                  ),
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: const TextSpan(
                        style: TextStyle(fontSize: 18, color: Colors.white, height: 1.5),
                        children: [
                          TextSpan(
                            text: 'Viindhya Bullion Pvt Ltd is pleased to introduce the ',
                          ),
                          TextSpan(
                            text: 'KUBERA GOLD HORDING',
                            style: TextStyle(
                                fontWeight: FontWeight.w900),
                          ),
                          TextSpan(
                            text: ' Plan, an extraordinary opportunity for savings and return on investment. Through this plan, clients have the potential to double their investment in just 40 months through monthly returns of 24- carat gold coins or biscuits. This plan is regulated under RBI guidelines and offers NABL-approved gold. It provides a secure and profitable means of acquiring returns in the form of gold. The plan begins at ₹10 Lakhs and can be extended to ₹5 Crores or more. This plan is a unique offering from Viindhya Bullion Pvt Ltd, a leading bullion company in India with a proven track record of providing quality gold bullion to its clients. The plan is an excellent opportunity for investors to capitalize on the current low gold prices and double their investment in a short period of time.',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(fontSize: 22, color: Color.fromRGBO(62, 0, 107, 1), height: 1.5),
                    children: [
                      TextSpan(
                        text: 'Why Invest in a',
                      ),
                      TextSpan(
                        text: '  KUBERA SCHEME?',
                        style: TextStyle(
                            fontWeight: FontWeight.w800),
                      ),
                    ]
                  )
                ),
                const SizedBox(height: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      width: 250,
                      height: 210,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(253, 251, 255, 1), 
                        borderRadius: BorderRadius.circular(14.0), 
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12, 
                            spreadRadius: 2, 
                            blurRadius: 7, 
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/icon/about-kubera-img1.jpg",
                            height: 90,
                            width: 90,
                          ), 
                          const SizedBox(height: 10,),
                          const Text(
                            "Predictable returns",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          const SizedBox(height: 5,),
                          const Text(
                            "Secondary income stream",
                            textAlign: TextAlign.center,
                          ),
                        ]
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      width: 250,
                      height: 210,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(253, 251, 255, 1), 
                        borderRadius: BorderRadius.circular(14.0), 
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12, 
                            spreadRadius: 2, 
                            blurRadius: 7, 
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/icon/about-kubera-img2.jpg",
                            height: 90,
                            width: 90,
                          ), 
                          const SizedBox(height: 10,),
                          const Text(
                            "Secured",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 5,),
                          const Text(
                            textAlign: TextAlign.center,
                            "Backed by strong collateral",
                          ),
                        ]
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      width: 250,
                      height: 210,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(253, 251, 255, 1), 
                        borderRadius: BorderRadius.circular(14.0), 
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12, 
                            spreadRadius: 2, 
                            blurRadius: 7, 
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/icon/about-kubera-img3.png",
                            height: 90,
                            width: 90,
                          ), 
                          const SizedBox(height: 10,),
                          const Text(
                            "Diversification",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 5,),
                          const Text(
                            textAlign: TextAlign.center,
                            "Fixed return without market volatility",
                          ),
                        ]
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      width: 250,
                      height: 210,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(253, 251, 255, 1), 
                        borderRadius: BorderRadius.circular(14.0), 
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12, 
                            spreadRadius: 2, 
                            blurRadius: 7, 
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/icon/about-kubera-img4.jpg",
                            height: 90,
                            width: 90,
                          ), 
                          const SizedBox(height: 10,),
                          const Text(
                            "Regular Income",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 5,),
                          const Text(
                            "Periodic principal and interest repayments",
                            textAlign: TextAlign.center,
                          ),
                        ]
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25,),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(228, 207, 255, 1), 
                    borderRadius: BorderRadius.circular(14.0), 
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center, 
                    children: <Widget>[
                      const Text(
                        "Secure Your Wealth with Kubera Scheme",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(62, 0, 117, 1),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 5), 
                      const Text(
                        "Double Your Gold Investment in 40 Months with Monthly Returns",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(42, 38, 38, 1),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      MaterialButton(
                        height: 45.0,
                        minWidth: 150.0,
                        color: const Color.fromRGBO(127, 57, 222, 1),
                        textColor: Colors.white,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0), 
                              ),
                        child: const Text("Get Started Today"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25,),
                RichText(
                  textAlign: TextAlign.justify,
                  text: const TextSpan(
                    style: TextStyle(fontSize: 22, color: Color.fromRGBO(62, 0, 107, 1), height: 1.5),
                    children: [
                      TextSpan(
                        text: 'Why choose',
                      ),
                      TextSpan(
                        text: '  KUBERA SCHEME?',
                        style: TextStyle(
                            fontWeight: FontWeight.w900),
                      ),
                    ]
                  )
                ),
                const SizedBox(height: 25,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Card(
                      elevation: 2,
                      color: const Color.fromRGBO(245, 237, 255, 1), 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: 
                                Image.asset(
                                  "assets/icon/about-kubera-img5.jpg",
                                  height: 90,
                                  width: 90,
                                ),
                            ),
                            const SizedBox(width: 16),
                            const Expanded(
                              child: Text(
                                'Get 100% return on your investment in 40 months.',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Card(
                      elevation: 2,
                      color: const Color.fromRGBO(245, 237, 255, 1), 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: 
                                Image.asset(
                                  "assets/icon/about-kubera-img6.jpg",
                                  height: 90,
                                  width: 90,
                                ),
                            ),
                            const SizedBox(width: 16),
                            const Expanded(
                              child: Text(
                                'Receive monthly gold biscuits of 999.99% purity',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Card(
                      elevation: 2,
                      color: const Color.fromRGBO(245, 237, 255, 1), 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: 
                                Image.asset(
                                  "assets/icon/about-kubera-img7.png",
                                  height: 90,
                                  width: 90,
                                ),
                            ),
                            const SizedBox(width: 16),
                            const Expanded(
                              child: Text(
                                'Backed by RBI guidelines and NABL-approved gold​(Save-Gold-InvestmentViB…).',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25,),
                const Column(
                  children: [
                    Text(
                      'Our Recent Successful Deals',
                      style: TextStyle(
                        fontSize: 22, 
                        color: Color.fromRGBO(62, 0, 107, 1),
                        fontWeight: FontWeight.w600
                        ),
                    ),
                    SizedBox(height: 10,),
                    Text('Exciting deals across tenures, asset classes and returns')
                  ],
                ),
                const SizedBox(height: 25,),
                MaterialButton(
                  height: 45.0,
                  minWidth: 150.0,
                  color: const Color.fromRGBO(127, 57, 222, 1),
                  textColor: Colors.white,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0), 
                        ),
                  child: const Text("Explore Schemes"),
                ),
                const SizedBox(height: 25,),
                const Column(
                  children: [
                    Text(
                      'Have More Questions?',
                      style: TextStyle(
                        fontSize: 22, 
                        color: Color.fromRGBO(62, 0, 107, 1),
                        fontWeight: FontWeight.w700
                        ),
                    ),
                    SizedBox(height: 10,),
                    Text('Check out our FAQs section to know more')
                  ],
                ),
                const SizedBox(height: 25,),
                MaterialButton(
                  height: 45.0,
                  minWidth: 100.0,
                  color: const Color.fromRGBO(253, 251, 255, 1),
                  textColor: Colors.black,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0), 
                        ),
                  child: const Text("View FAQs"),
                ),
                const SizedBox(height: 25,),
                RichText(
                  textAlign: TextAlign.justify,
                  text: const TextSpan(
                    style: TextStyle(fontSize: 16, height: 1.3, color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'All investment opportunities on our platform carry risk and investors should carefully evaluate whether the opportunity is suitable for them before making the investments. Please read the detailed risk factors available at ',
                      ),
                      TextSpan(
                        text: 'https.kuberascheme.com/risk-disclosure ',
                        style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                      ),
                      TextSpan(
                        text: ' before making an investment.'
                      )
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