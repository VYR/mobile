import 'package:flutter/material.dart';
import 'package:kubera_scheme/screens/profile_screens.dart';
import 'package:flutter/gestures.dart';
import 'package:kubera_scheme/screens/refer_earn_faqs_screen.dart';

class ReferralScreen extends StatefulWidget {
  const ReferralScreen({super.key});
  @override
  _ReferralScreenState createState() => _ReferralScreenState();
}

class _ReferralScreenState extends State<ReferralScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child:Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(230, 230, 250, 1),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Rewards earned will be paid out on completing your KYC.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(42, 38, 38, 1),
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 15),
                      MaterialButton(
                        height: 45.0,
                        minWidth: 150.0,
                        color: const Color.fromRGBO(39, 36, 123, 1),
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreens()),);
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: const Text("Complete KYC"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12, 
                        offset: Offset(0, 4), 
                        blurRadius: 8.0,
                        spreadRadius: 3.0, 
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(39, 36, 123, 1),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Introduce Fixed Income investments to your friends and earn unlimited cash rewards!',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              "Your Referral Link",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(39, 36, 123, 1),
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(14.0),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                ),
                                child: const Text(
                                  'https://www.kuberascheme.com/referal/link',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 11, 0),
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(230, 230, 250, 1),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.copy),
                                        iconSize: 15,
                                      ),
                                      const Text(
                                        'Copy Link',
                                        style: TextStyle(
                                            color: Color.fromRGBO(39, 36, 123, 1)),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 30),
                                Container(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 11, 0),
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(230, 230, 250, 1),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.share),
                                        iconSize: 15,
                                      ),
                                      const Text(
                                        'Share Link',
                                        style: TextStyle(
                                            color: Color.fromRGBO(39, 36, 123, 1)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(230, 230, 250, 1),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Learn more about Refer and Earn',
                        style: TextStyle(
                            color: Color.fromRGBO(39, 36, 123, 1)),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ReferEarnScreen()),);
                        },
                        icon: const Icon(Icons.login_outlined),
                        iconSize: 15,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(245, 255, 251, 1),
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                        color: const Color.fromRGBO(215, 221, 219, 1),
                        width: 2),
                  ),
                  child: const Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '0',
                                style: TextStyle(
                                  color: Color.fromRGBO(39, 36, 123, 1),
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text('Investors Referred')
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '₹0',
                                style: TextStyle(
                                  color: Color.fromRGBO(39, 36, 123, 1),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text('Rewards Earned')
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '₹0',
                                style: TextStyle(
                                  color: Color.fromRGBO(39, 36, 123, 1),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text('Rewards Paid Out')
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                // TabBar
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TabBar(
                    controller: _tabController,
                    tabs: const[
                      Tab(text: 'Rewards Earned'),
                      Tab(text: 'Registered but yet to Invest'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // TabBarView
                SizedBox(
                  height: 200, // Set a fixed height for the TabBarView
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 30,),
                            const Text('You are yet to make any referrals. Start now to earn rewards!'),
                            const SizedBox(height: 5,),
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: "Click here", // Clickable text
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline, 
                                    ),
                                    recognizer: TapGestureRecognizer() 
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => const ReferEarnScreen()), 
                                        );
                                      },
                                  ),
                                  const TextSpan(
                                    text: " to learn about the refer & earn program.",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ),
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Displaying only those referrals that are still eligible. Referrals will not be listed post the expiry of their eligibility period',
                              textAlign: TextAlign.left,
                              ),
                            const SizedBox(height: 40,),
                            const Text('You are yet to make any referrals. Start now to earn rewards!'),
                            const SizedBox(height: 5,),
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: "Click here", // Clickable text
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline, 
                                    ),
                                    recognizer: TapGestureRecognizer() 
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => const ReferEarnScreen()), 
                                        );
                                      },
                                  ),
                                  const TextSpan(
                                    text: " to learn about the refer & earn program.",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
          ),
        ),
      );
    
  }
}
