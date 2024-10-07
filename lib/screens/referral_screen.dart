import 'package:flutter/material.dart';

class ReferralScreen extends StatelessWidget {
  const ReferralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(230, 230, 250, 1), 
                      borderRadius: BorderRadius.circular(14.0), 
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
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0), 
                                ),
                          child: const Text("Complete KYC"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(39, 36, 123, 1),  
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
                          )
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white, 
                      borderRadius: BorderRadius.circular(14.0), 
                      border: Border.all(
                        color: Colors.black, 
                        width: 1.0,         
                      ),
                    ),
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
                        const SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(16.0),
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
                        const SizedBox(height: 10,), 
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4.0),
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
                                    icon: const Icon(Icons.copy,), iconSize: 15,
                                  ),
                                  const Text(
                                    'Copy Link',
                                    style: TextStyle(
                                      color: Color.fromRGBO(39,36, 123, 1)
                                    ),
                                    ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 30,),Container(
                              padding: const EdgeInsets.all(4.0),
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
                                    icon: const Icon(Icons.share,), iconSize: 15,
                                  ),
                                  const Text(
                                    'Share Link',
                                    style: TextStyle(
                                      color: Color.fromRGBO(39,36, 123, 1)
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),                       
                      ],
                    ),
                  ),
                  const SizedBox(height: 30,),
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
                            color: Color.fromRGBO(39,36, 123, 1)
                          ),
                        ),
                        IconButton(
                          onPressed: () {}, 
                          icon: const Icon(Icons.login_outlined,), iconSize: 15,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(245, 255, 251, 1), 
                      borderRadius: BorderRadius.circular(8.0), 
                    ),
                    child: const Column(
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[ 
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('0',
                                  style: TextStyle(
                                    color: Color.fromRGBO(39, 36, 123, 1),
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('Investors Referred')
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
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
                    )
                  ),
                  const SizedBox(height: 30,),
                  const TabBar(
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.black,
                    indicatorColor: Colors.blue,
                    tabs: [
                      Tab(text: 'Rewards Earned(0)'),
                      Tab(text: 'Not Invested Yet(0)'),
                    ],
                  ),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        Center(child: Text('You are yet to invite friends to experience Kubera Scheme')),
                        Center(child: Text('You are yet to invite friends to experience Kubera Scheme')),
                      ],
                    ),
                  ),
                ]     
              )
            )
          )
        )
      ),
    );
  }
}
