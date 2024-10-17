import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MySchemesScreen extends StatelessWidget {
  const MySchemesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(60), // Height of the text and tabs
            child: Column(
              children: [
                Text(
                  'Here is the status of all your investments on available Schemes',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black,
                  indicatorColor: Color.fromRGBO(127, 57, 222, 1),
                  tabs: [
                    Tab(text: 'Kubera Scheme'),
                    Tab(text: 'Digital Gold Scheme'),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              _buildKuberaSchemeTab(context),
              _buildDigitalGoldSchemeTab(context),
            ],
          ),
        ),
      ),
    );
  }

  // Method to build the Kubera Scheme tab with nested tabs
  Widget _buildKuberaSchemeTab(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Column(
        children: [
          const TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black,
            indicatorColor: Color.fromRGBO(127, 57, 222, 1),
            tabs: [
              Tab(text: 'Active Investments'),
              Tab(text: 'Fully Repaid Investments'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                _buildActiveInvestmentsTab(context, 'Kubera'),
                _buildFullyRepaidInvestmentsTab(context, 'Kubera'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Method to build the Digital Gold Scheme tab with nested tabs
  Widget _buildDigitalGoldSchemeTab(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Column(
        children: [
          const TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black,
            indicatorColor: Color.fromRGBO(127, 57, 222, 1),
            tabs: [
              Tab(text: 'Active Investments'),
              Tab(text: 'Fully Repaid Investments'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                _buildActiveInvestmentsTab(context, 'Digital Gold'),
                _buildFullyRepaidInvestmentsTab(context, 'Digital Gold'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Method to build the Active Investments tab
  Widget _buildActiveInvestmentsTab(BuildContext context, String schemeType) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('No Active $schemeType Investments'),
            const SizedBox(height: 20),
            MaterialButton(
              height: 45.0,
              minWidth: 150.0,
              color: const Color.fromRGBO(39, 36, 123, 1),
              textColor: Colors.white,
              onPressed: () {
                GoRouter.of(context).go('/${schemeType.toLowerCase().replaceAll(' ', '-')}-scheme');
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Text("Start Investing"),
            ),
          ],
        ),
      ),
    );
  }

  // Method to build the Fully Repaid Investments tab
  Widget _buildFullyRepaidInvestmentsTab(BuildContext context, String schemeType) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Text('No Fully Repaid $schemeType Investments'),
      ),
    );
  }
}
