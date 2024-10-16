// not using it. Instead we are using kubera_scheme_faqs.

import 'package:flutter/material.dart';

class FaqsScreen extends StatelessWidget {
  const FaqsScreen({super.key});
  static const List<String> questions = [
    "What is the fee structure?Are there any charges while investing on the platform?",
    "What is my maturity date?",
    "What is the minimum participation amount?",
    "Do I need to pay tax over my returns?",
    "Is Invoice Discounting a Secured Product?",
    "Can an investor liquidate his investments before maturity?",
    "What is the process to invest?",
    "How are the returns calculated?",
    "Can NRIs participate in this transaction?",
    "What is the role of Kubera?",
    "When will I get my repayments?",
    "Does this investment opportunity carry any risk?",
    "Are the returns from this investment opportunity guaranteed?"
  ];

  static const List<String> answers = [
    "There are no fees applicable to investors currently.",
    "The maturity date is the date of repayment backed to investors and includes both principal and accumulated interest.The earned interest is calculated for the number of days between disbursement date and final maturity date.",
    "Minimum amount for participation by Indian residents and non-residents participating through NRO accounts is INR 25,000.",
    "The tax liability on investment returns to be determined as per the applicable income tax rates based on investors taxable income brackets.",
    "Invoice Discounting is an unsecured product, however, in this case the transaction is backed by Bank Guarantee which covers 100% of the Investment amount and Interest.",
    "These opportunities are meant for hold-to-maturity. Since there is limited liquidity for these products in market.",
    "Step 1 - Select the amount you would wish to invest (min. Investment of 95,000), Step 2 - Review and sign the documents, Step 3 - Complete payment through net banking.We will send you an email confirming your investment and you can track the same on your kubera scheme dashboard ",
    "An investor investing in the opportunity will start earning interest on their investment post the disbursement of money to the borrower, which is typically within two business days from the date of investment. If disbursement is on Day ‘T’, the calculated interest would start from ‘T+1’ until the date of the investment maturity (repayment date). ",
    " Non-residents Indians can participate in this opportunity only through their NRO accounts.",
    "kubera scheme will monitor the investment throughout the lifecycle, ensure pay-out is made at the time of maturity, provide regular updates to Investors, and exercise rights on behalf of all Investors in case of event of default.",
    "Repayments will be made within 24 hours from the date of repayment mentioned in the contract/repayment schedule. For example, if you have a repayment date on Jan 3rd, repayment will be made on or before 11pm on Jan 4th. Also, if the mentioned repayment date falls on a bank holiday, the payment will be processed as part of the next business day. ",
    "Yes, this investment opportunity carries risk. Each investor is requested to understand the opportunity and the associated risks before making any investment decision. ",
    "No, the returns are not guaranteed. In an adverse situation, you might lose your invested capital. "
  ];

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
                  'FAQs',
                  style: TextStyle(
                    color: Color.fromRGBO(38, 36, 123, 1),
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
                ), 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(questions.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${index + 1}. ${questions[index]}',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            answers[index],
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
             ],
            )
          ),
        ),
      ),
    );
  }
}
