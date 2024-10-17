import 'package:flutter/material.dart';

class KuberaSchemeFaqs extends StatelessWidget {
  const KuberaSchemeFaqs({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'FAQs',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w700,fontSize: 18
                ),
              ),
              ExpansionTile(
                title: Text("1.What is the goal of the Kubera Scheme?",
                style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500
                ),),
                expandedAlignment: Alignment.topLeft,
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                      "The scheme is designed to encourage savings and provide a high-yield, alternative fixed income.",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text("2.How long does the Kubera Scheme last?",
                style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500
                ),),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child:
                  Text(
                    "The scheme runs for 40 months.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text("3.How often are the returns paid?",
                style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500
                ),),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child:
                  Text(
                    "Returns are paid monthly in 24 karat 999 gold.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text("4.What happens if I miss to receive my return?",
                style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500
                ),),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child:
                  Text(
                    "Please contact our support team for guidance if you miss an instalment.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text("5.Can I increase my investment during the scheme?",
                style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500
                ),),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child:
                  Text(
                    "No, the initial deposit remains fixed for the 40-month period.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text("6.How do I apply for the Kubera Scheme?",
                style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500
                ),),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child:
                  Text(
                    "You can apply through our website or app, or contact us directly via email at kuberainvestor@gmail.com. Alternatively, you can visit our office for assistance.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text(
                    "7.What documents are needed to join the Kubera Scheme?",
                    style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500
                ),),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child:
                  Text(
                    "Basic identification documents, proof of address, and bank details are required. KYC will be completed through Digi Locker.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text("8.What type of gold is used for the payout?",
                style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500
                ),),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child:
                  Text(
                    "Gold of certified purity (24 karat 999) is used for payouts.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text("9.Can I refer others to the Kubera Scheme?",
                style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500
                ),),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child:
                  Text(
                    "Yes, we encourage referrals. Please contact us for details on referral benefits.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text(
                    "10.What is the customer service contact for the Kubera Scheme?",
                    style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500
                ),),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child:
                  Text(
                    "You can reach us at kuberainvestor@gmail.com for any assistance.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  )
                ],
              ),
              ExpansionTile(
                title:
                    Text("11.Is there a maximum limit to how much I can invest?",
                    style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500
                ),),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child:
                  Text(
                    "Investments start from ₹ 10 lakhs and can go up to ₹ 5 crores or more.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text("12.Are there any taxes on the gold payout?",
                style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500
                ),),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child:
                  Text(
                    "Taxes will apply as per government regulations.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text("13.How is the gold delivered to investors?",
                style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500
                ),),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child:
                  Text(
                    "Gold is delivered securely through our trusted partners.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text("14.Can I visit Vindhya Bullion’s refinery?",
                style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500
                ),),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child:
                  Text(
                    "Yes, we welcome visits. Please schedule an appointment in advance.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text("14.Can I visit Vindhya Bullion’s refinery?",
                style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500
                ),),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child:
                  Text(
                    "Yes, we welcome visits. Please schedule an appointment in advance.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text("15.What makes Vindhya Bullion a trusted partner?",
                style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500
                ),),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child:
                  Text(
                    "We are RBI-regulated, NABL-certified, and uphold transparency, trust, and ethical values in all our operations.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text(
                    "16.Is there an option to receive cash instead of gold?",
                    style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500
                ),),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child:
                  Text(
                    "No, the returns are paid exclusively in gold.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text("17.What happens if the gold market fluctuates?",
                style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500
                ),),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child:
                  Text(
                    "The payout value in gold remains unaffected by market fluctuations.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text("18.Can companies invest in the Kubera Scheme?",
                style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500
                ),),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child:
                  Text(
                    "Yes, both individuals and companies can invest.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text("19.What if the customer dies during the scheme?",
                style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500
                ),),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child:
                  Text(
                    "If the customer passes away, the nominee designated at the time of application will be eligible to receive the gold returns.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text(
                  "20.Where can I find more information about Vindhya Bullion’s schemes?",
                  style: TextStyle(
                    fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500
                  ),
                ),
                expandedAlignment: Alignment.topLeft, //left and right adjust
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child:
                  Text(
                    "For more information, visit our website or contact us directly.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  )
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}
