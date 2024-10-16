import 'package:flutter/material.dart';

class WebinarsScreen extends StatelessWidget {
  const WebinarsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kubera Scheme Webinars'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child:Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(245, 237, 255, 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Kubera Scheme Webinars',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(62, 0, 117, 1)
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Welcome to Kubera scheme\'s webinar series, where we share insights, best practices, and the latest trends. Join our exclusive webinars to make informed investment decisions with confidence.',
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              // Navigate to webinars page
                            },
                            child: const Text('View Webinars'),
                          ),
                          const SizedBox(height: 16),
                          Card(
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/icon/icon.png',
                                  width: 50,
                                  height: 50,
                                ),
                                const SizedBox(width: 10),
                                const Expanded(
                                  child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Expert Insights',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text('Learn from industry leaders and seasoned investors.'),
                                  ],
                                ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Card(
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/icon/icon.png',
                                  width: 50,
                                  height: 50,
                                ),
                                const SizedBox(width: 10),
                                const Expanded(
                                  child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Interactive Sessions',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text('Get your questions answered live during the Q&A.'),
                                  ],
                                ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Card(
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/icon/icon.png',
                                  width: 50,
                                  height: 50,
                                ),
                                const SizedBox(width: 10),
                                const Expanded(
                                  child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'On-Demand Access',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text('View past webinars at your convenience without any sign-up.'),
                                  ],
                                ),
                                )
                              ],
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
        )
      )
    );
  }
}
