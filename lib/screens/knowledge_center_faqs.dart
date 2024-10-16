import 'package:flutter/material.dart';

class KnowledgeFaqScreens extends StatelessWidget {
  const KnowledgeFaqScreens({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQs'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          Text("Frequently Asked Questions",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(16, 15, 15, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 15,
          ),
          Text(
            'Here are answers to questions that we get asked most about investing in Kubera Scheme',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          ExpansionTile(
            title: Text("What is the goal of the Kubera Scheme?"),
            expandedAlignment: Alignment.topLeft,
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            // collapsedBackgroundColor: Colors.blue,
            // trailing: Icon(Icons.check), // icons symbol change
            // controlAffinity: ListTileControlAffinity.leading, //Down Arrow left side changing
            children: [
              // Padding(padding: EdgeInsets.only(bottom: 20)),
              Text(
                "The scheme is designed to encourage savings and provide a high-yield, alternative fixed income.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              // Text("Don't Forget like and subscribe")
            ],
            // tilePadding: EdgeInsets.all(0),

            //collapse background color
            //collapsedBackgroundColor: Colors.orange,
            // collapsedTextColor: Colors.black,
            // collapsedIconColor: Colors.black,

            // backgroundColor: Colors.blue,
            // textColor: Colors.white,
            // iconColor: Colors.black,
          ),
          // SizedBox(
          //   height: 5,
          // ),
          ExpansionTile(
            title: Text("How long does the Kubera Scheme last?"),
            expandedAlignment: Alignment.topLeft, //left and right adjust
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            // collapsedBackgroundColor: Colors.blue,
            children: [
              Text(
                "The scheme runs for 40 months.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("How often are the returns paid?"),
            expandedAlignment: Alignment.topLeft, //left and right adjust
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Returns are paid monthly in 24 karat 999 gold.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("What happens if I miss to receive my return?"),
            expandedAlignment: Alignment.topLeft, //left and right adjust
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Please contact our support team for guidance if you miss an instalment.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Can I increase my investment during the scheme?"),
            expandedAlignment: Alignment.topLeft, //left and right adjust
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "No, the initial deposit remains fixed for the 40-month period.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("How do I apply for the Kubera Scheme?"),
            expandedAlignment: Alignment.topLeft, //left and right adjust
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "You can apply through our website or app, or contact us directly via email at kuberainvestor@gmail.com. Alternatively, you can visit our office for assistance.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("What documents are needed to join the Kubera Scheme?"),
            expandedAlignment: Alignment.topLeft, //left and right adjust
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Basic identification documents, proof of address, and bank details are required. KYC will be completed through Digi Locker.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("What type of gold is used for the payout?"),
            expandedAlignment: Alignment.topLeft, //left and right adjust
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Gold of certified purity (24 karat 999) is used for payouts.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Can I refer others to the Kubera Scheme?"),
            expandedAlignment: Alignment.topLeft, //left and right adjust
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Yes, we encourage referrals. Please contact us for details on referral benefits.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text(
                "What is the customer service contact for the Kubera Scheme?"),
            expandedAlignment: Alignment.topLeft, //left and right adjust
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "You can reach us at kuberainvestor@gmail.com for any assistance.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Is there a maximum limit to how much I can invest?"),
            expandedAlignment: Alignment.topLeft, //left and right adjust
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Investments start from ₹ 10 lakhs and can go up to ₹ 5 crores or more.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Are there any taxes on the gold payout?"),
            expandedAlignment: Alignment.topLeft, //left and right adjust
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Taxes will apply as per government regulations.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("How is the gold delivered to investors?"),
            expandedAlignment: Alignment.topLeft, //left and right adjust
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Gold is delivered securely through our trusted partners.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Can I visit Vindhya Bullion's refinery?"),
            expandedAlignment: Alignment.topLeft, //left and right adjust
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Yes, we welcome visits. Please schedule an appointment in advance.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("How long does the Kubera Scheme last?"),
            expandedAlignment: Alignment.topLeft, //left and right adjust
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "The scheme runs for 40 months.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("What makes Vindhya Bullion a trusted partner?"),
            expandedAlignment: Alignment.topLeft, //left and right adjust
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "We are RBI-regulated, NABL-certified, and uphold transparency, trust, and ethical values in all our operation",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Is there an option to receive cash instead of gold?"),
            expandedAlignment: Alignment.topLeft, //left and right adjust
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "No, the returns are paid exclusively in gold.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("What happens if the gold market fluctuates?"),
            expandedAlignment: Alignment.topLeft, //left and right adjust
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "The payout value in gold remains unaffected by market fluctuations.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Can companies invest in the Kubera Scheme?"),
            expandedAlignment: Alignment.topLeft, //left and right adjust
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Yes, both individuals and companies can invest.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("What if the customer dies during the scheme?"),
            expandedAlignment: Alignment.topLeft, //left and right adjust
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "If the customer passes away, the nominee designated at the time of application will be eligible to receive the gold returns.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text(
                "Where can I find more information about Vindhya Bullion's schemes?"),
            expandedAlignment: Alignment.topLeft, //left and right adjust
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "For more information, visit our website or contact us directly.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
