import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MySchemesScreen extends StatelessWidget {
  const MySchemesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child:Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "My Schemes",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color.fromRGBO(95, 92, 92, 1),
                        fontSize: 22,
                        fontWeight: FontWeight.w900)
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Here is the status of all your investments on Kubera Scheme.',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color.fromRGBO(95, 92, 92, 1),
                      fontSize: 16,
                    )
                  ),
                  const SizedBox(height: 30,),
                  const TabBar(
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.black,
                    indicatorColor: Colors.blue,
                    tabs: [
                      Tab(text: 'Kubera Scheme'),
                      Tab(text: 'Digital Gold Scheme'),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [ 
                        const TabBar(
                          labelColor: Colors.blue,
                          unselectedLabelColor: Colors.black,
                          indicatorColor: Colors.blue,
                          tabs: [
                            Tab(text: 'Active Investments'),
                            Tab(text: 'Fully Repaid Investments'),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [ 
                              Center(
                                child: Column(
                                  children: <Widget>[
                                    const Text('No Active Kubera Investments'),
                                    MaterialButton(
                                      height: 45.0,
                                      minWidth: 150.0,
                                      color: const Color.fromRGBO(39, 36, 123, 1),
                                      textColor: Colors.white,
                                      onPressed: () {GoRouter.of(context).go('/kubera-scheme');},
                                      shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(6), 
                                            ),
                                      child: const Text("Start Investing"),
                                    ),
                                  ],
                                ) 
                              ),
                              const Center(child: Text('No Fully Repaid Digital Gold Investments')),
                            ]
                          )
                        ),
                        const TabBar(
                          labelColor: Colors.blue,
                          unselectedLabelColor: Colors.black,
                          indicatorColor: Colors.blue,
                          tabs: [
                            Tab(text: 'Active Investments'),
                            Tab(text: 'Fully Repaid Investments'),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [ 
                              Center(
                                child: Column(
                                  children: <Widget>[
                                    const Text('No Active Kubera Investments'),
                                    MaterialButton(
                                      height: 45.0,
                                      minWidth: 150.0,
                                      color: const Color.fromRGBO(39, 36, 123, 1),
                                      textColor: Colors.white,
                                      onPressed: () {GoRouter.of(context).go('/kubera-scheme');},
                                      shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(6), 
                                            ),
                                      child: const Text("Start Investing"),
                                    ),
                                  ],
                                ) 
                              ),
                              const Center(child: Text('No Fully Repaid Digital Gold Investments')),
                            ]
                          )
                        )
                      ],
                    ),
                  ),   
                ],
              ),
            ),
          )
        )
      ),
    );
  }
}
