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
                    fontWeight: FontWeight.w700,fontSize: 18
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'High Yield Fixed Income',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  'The scheme offers a high yield, with the potential to double your investment in 40 months.',
                ),
                SizedBox(height: 10),
                Text(
                  'Returns in Gold',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Monthly returns are paid in 24-karat 999 gold, unaffected by market fluctuations​.',
                ),
                SizedBox(height: 10),
                Text(
                  'Investment Range',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Investments start from ₹10 lakhs and can go up to ₹5 crores.',
                ),
                SizedBox(height: 10),
                Text(
                  'Secure Structure',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'The scheme is backed by a bank guarantee, protecting 100% of both investment and interest amounts.',
                ),
                SizedBox(height: 10),
                Text(
                  'Referral Benefits',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Participants can earn benefits by referring others to the scheme.',
                ),
                SizedBox(height: 10),
                Text(
                  'Long-Term Commitment',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'The scheme lasts for 40 months, and early withdrawal is not permitted.',
                ),
                SizedBox(height: 10),
                Text(
                  'Eligibility',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Both individuals and companies can invest, with simple KYC requirements.',
                ),
                SizedBox(height: 20),
                Text(
                  'How the Kubera Scheme Works',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 18
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Investment',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  'Investors deposit a minimum of ₹10 Lakhs, up to ₹5 Crores or more, into the Kubera Scheme. The deposit remains fixed for the entire 40-month period.',
                ),
                SizedBox(height: 10),
                Text(
                  'Gold-Based Returns',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Investors receive monthly returns in the form of 24-karat, 999 purity gold. The amount is calculated as 1/40th of the total investment each month, ensuring the investor receives double the initial investment by the end of 40 months.',
                ),
                SizedBox(height: 10),
                Text(
                  'Bank Guarantee',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "The scheme is secured by a Bank Guarantee from the buyer's bank, which covers 100% of the investment and interest. This guarantee is invoked if the buyer defaults on payments, ensuring that investors are protected.",
                ),
                SizedBox(height: 10),
                Text(
                  'No Early Withdrawals',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'The scheme does not allow early withdrawals. Investors are locked into the 40-month period, and returns are exclusively in gold.',
                ),
              ]
            )
          )
        )
      )
    );
  }
}


