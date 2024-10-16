import 'package:flutter/material.dart';

class KeyMetricesScreen extends StatelessWidget {
  const KeyMetricesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Key Performance Metrices',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 18
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Investment Tenure',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ),
                const SizedBox(height: 7),
                const Text(
                  '40 months. The scheme runs for a fixed period of 40 months, during which investors receive monthly returns.',
                ),
                const SizedBox(height: 10),
                const Text(
                  'Monthly Returns',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ),
                _buildBulletPoint('Investors receive 1/40th of their initial investment in 24-karat 999 gold each month.'),
                _buildBulletPoint('Example: An investment of ₹20 lakhs would yield ₹1 lakh worth of gold per month.'),
                const SizedBox(height: 10),
                const Text(
                  'Total Returns',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ),
                _buildBulletPoint('100% return on the investment over 40 months.'),
                _buildBulletPoint('Example: An initial investment of ₹10 lakhs would return ₹20 lakhs in gold by the end of the scheme.'),
                const SizedBox(height: 10),
                const Text(
                  'Minimum Investment',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'The minimum investment required to join the scheme is ₹10 lakhs',
                ),
                const SizedBox(height: 10),
                const Text(
                  'Maximum Investment',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Investors can invest up to ₹5 crores or more, providing flexibility for larger-scale investments',
                ),
                const SizedBox(height: 10),
                const Text(
                  'Security via Bank Guarantee',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'The entire investment, including the interest amount, is covered by a 100% Bank Guarantee, ensuring safety against defaults.',
                ),
                const SizedBox(height: 10),
                const Text(
                  'Guaranteed Gold Payout',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Payouts are made in certified 24-karat 999 gold, ensuring high-value returns regardless of market fluctuations​.',
                ),
                const SizedBox(height: 10),
                const Text(
                  'Referral Benefits',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Investors can also earn additional returns by referring others to the Kubera Scheme.',
                ),               
              ]
            )
          )
        )
      )
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          const Icon(Icons.circle, size: 8,),
          const SizedBox(width: 8),
          Expanded(child: Text(text, textAlign: TextAlign.left,),),
        ],
      ),
    );
  }

}

