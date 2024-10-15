import 'package:flutter/material.dart';

class KeyInvestHighlightsScreen extends StatelessWidget {
  const KeyInvestHighlightsScreen({super.key});
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
                  'Key Investment Highlights',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color.fromRGBO(38, 36, 123, 1),
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Strong Security Structure',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color.fromRGBO(38, 36, 123, 1),
                    fontWeight: FontWeight.w700,fontSize: 14
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '• Secured Structure with Bank Guarantee covering 100% of the Investment and Interest amount.',
                ),
                Text(
                  '• kubera scheme controls escrow where repayments are received from the Buyer.',
                ),
                SizedBox(height: 10),
                Text(
                  'About Bank Guarantee',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color.fromRGBO(38, 36, 123, 1),
                    fontWeight: FontWeight.w700,fontSize: 14
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '•A bank guarantee is an enforceable commitment by a bank to ensure payment to a beneficiary. The issued BG can be invoked by beneficiary in certain conditions such as failure of payment.'
                ),
                SizedBox(height: 6),
                Text(
                  "• Bank guarantee is issued on the Bank's assessment of buyer's credit worthiness.",
                ),
                SizedBox(height: 6),
                Text(
                  "• In this case, the seller of goods/services gets a bank guarantee from the buyer's Bank which can be invoked if the buyer fails to make the payment on time.",
                ),
                SizedBox(height: 16),
                Text(
                  'How it works?',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color.fromRGBO(38, 36, 123, 1),
                    fontWeight: FontWeight.w700,fontSize: 14
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '• Seller delivers the goods/services to buyer on credit and raises the invoice (receivables)',
                ),
                Text(
                  "• Buyer's bank issues an unconditional and irrevocable bank guarantee to the seller (up to the sanctioned limit)",
                ),
                Text(
                  '• Seller assigns the Bank guarantee to kubera scheme',
                ),
                Text(
                  '• Investor(s) subscribe to discounted invoices on kubera scheme platform',
                ),
                Text(
                  '• kubera scheme takes the control on escrow account (designated a/c for all buyer repayments) to safeguard Investors.',
                ),
                Text(
                  '• When the buyer makes payment, it flows directly into the escrow account controlled by kubera scheme. In worst case scenario of default, kubera scheme invokes the BG with bank to recover the amount.',
                ),
              ]
            )
          )
        )
      )
    );
  }
}

