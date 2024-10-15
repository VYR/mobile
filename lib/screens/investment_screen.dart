import 'package:flutter/material.dart';

class InvestmentScreen extends StatelessWidget {
  InvestmentScreen({super.key});
  final List<Transaction> transactions = [
    Transaction('67585479087657904327', '₹500', '12:30 PM, 05 Oct'),
    Transaction('67585479087657904327', '₹1200', '11:00 AM, 05 Oct'),
    Transaction('67585479087657904327', '₹250', '08:15 AM, 05 Oct'),
    Transaction('67585479087657904327', '₹1500', '07:45 PM, 04 Oct'),
  ];

  // If KYC is not completed
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body:SafeArea(
  //       child: SingleChildScrollView(
  //         child:  Padding(
  //           padding: const EdgeInsets.all(20),
  //           child: Column(
  //             children: <Widget>[
  //               const SizedBox(height: 70),
  //               Column(
  //                 children: <Widget>[
  //                   Center(
  //                     child: Image.asset(
  //                       "assets/icon/thumb.jpg",
  //                       height: 100,
  //                       width: 100,
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //               const SizedBox(
  //                 height: 20,
  //               ),
  //               const Text("Your KYC Verification is in progress",
  //                   textAlign: TextAlign.left,
  //                   style: TextStyle(
  //                       color: Color.fromRGBO(95, 92, 92, 1),
  //                       fontSize: 18,
  //                       fontWeight: FontWeight.bold)),
  //               const SizedBox(
  //                 height: 10,
  //               ),
  //               const Text(
  //                   ' We will notify you as soon as it is verified. please reach out for support.'),
  //               const SizedBox(
  //                 height: 20,
  //               ),
  //               MaterialButton(
  //                 height: 50.0,
  //                 minWidth: 300.0,
  //                 color: const Color.fromRGBO(0, 92, 187, 1),
  //                 textColor: Colors.white,
  //                 onPressed: () => {},
  //                 child: const Text("Get Support"),
  //               )
  //             ],
  //           ),
  //         ),
  //       )
  //     )
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final transaction = transactions[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.purple,
                child: Icon(Icons.account_circle, color: Colors.white),
              ),
              title: Text(transaction.txnNo),
              subtitle: Text(transaction.date),
              trailing: Text(transaction.amount,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        TransactionDetailsPage(transaction: transaction),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class TransactionDetailsPage extends StatelessWidget {
  final Transaction transaction;

  const TransactionDetailsPage({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          color: Colors.grey[150],
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 5),
              const Row(
                children: <Widget>[
                  SizedBox(
                    width: 125,
                    child: Text('Payment For',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700)),
                  ),
                  Text('Kubera Scheme', style: TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 2),
              const Row(
                children: <Widget>[
                  SizedBox(
                    width: 125,
                    child: Text('Name',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700)),
                  ),
                  Text('Kubera', style: TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 2),
              const Row(
                children: <Widget>[
                  SizedBox(
                    width: 125,
                    child: Text('Email Id',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700)),
                  ),
                  Text('kubera@gmail.com', style: TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 2),
              const Row(
                children: <Widget>[
                  SizedBox(
                    width: 125,
                    child: Text('Phone Number',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700)),
                  ),
                  Text('9876543210', style: TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: <Widget>[
                  const SizedBox(
                    width: 125,
                    child: Text('Amount',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700)),
                  ),
                  Text(' ${transaction.amount} ',
                      style: const TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: <Widget>[
                  const SizedBox(
                    width: 125,
                    child: Text('Transaction No',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700)),
                  ),
                  Text(' ${transaction.txnNo} ',
                      style: const TextStyle(fontSize: 16)),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class Transaction {
  final String txnNo;
  final String amount;
  final String date;

  Transaction(this.txnNo, this.amount, this.date);
}
