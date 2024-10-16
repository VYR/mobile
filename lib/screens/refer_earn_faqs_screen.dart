import 'package:flutter/material.dart';

class ReferEarnScreen extends StatelessWidget {
  const ReferEarnScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Refer and Earn'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(230, 230, 250, 1),
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "REFER AND EARN",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(47, 44, 81, 1),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Fixed-Income Investments to your Friends and Earn",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(47, 44, 81, 1),
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "We will notify you as soon as it is verified. Please reach out for support.",
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
                      color: const Color.fromRGBO(0, 92, 187, 1),
                      textColor: Colors.white,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: const Text("Get Support"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Refer & Earn FAQs",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(16, 15, 15, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const ExpansionTile(
                title: Text(
                    "What is the Refer and Earn program in the Kubera Scheme?"),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "The Refer and Earn program allows you to refer friends, family, or businesses to invest in the Kubera Scheme and earn rewards for successful referrals.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const ExpansionTile(
                title: Text("How do I refer someone to the Kubera Scheme?"),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "You can refer others by sharing your unique referral code or by having them mention your name during the application process. You can also email us their details for assistance.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const ExpansionTile(
                title: Text("What rewards can I earn through referrals?"),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "The rewards vary based on the investment amount of the referred person. These rewards can include incentives in gold, exclusive offers, or other perks.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const ExpansionTile(
                title:
                    Text("Is there a limit to how many people I can refer?"),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "No, there is no limit to how many people you can refer to the Kubera Scheme. The more successful referrals you make, the more rewards you can earn.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const ExpansionTile(
                title: Text(
                    "When do I receive the rewards after a successful referral?"),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Rewards are processed once the referred person successfully completes their investment in the Kubera Scheme. The time frame for receiving rewards will be shared with you after confirmation.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const ExpansionTile(
                title: Text("Can I track the status of my referrals?"),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Yes, you will receive updates via email or through our app regarding the status of your referrals and any rewards due.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const ExpansionTile(
                title: Text(
                    "What information do I need to provide to refer someone?"),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "You simply need to share your referral code or provide the name and contact information of the person you are referring. We will assist them with the rest.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const ExpansionTile(
                title: Text(
                    "Can I refer people who are already in the Kubera Scheme?"),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "No, only new investors who are not already part of the Kubera Scheme can be referred.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const ExpansionTile(
                title: Text(
                    "Do I need to be an existing investor to refer someone?"),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Yes, you must be an investor in the Kubera Scheme to refer others.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ]
          )
          )
        ),
      )
    );
  }
}
