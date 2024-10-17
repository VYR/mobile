import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SchemesScreens extends StatelessWidget {
  const SchemesScreens({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(230, 230, 250, 1), 
                    borderRadius: BorderRadius.circular(14.0), 
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: <Widget>[
                      const Text(
                        "Your KYC verification is in progress",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(47, 44, 81, 1),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8), 
                      const Text(
                        "We will notify you as soon as it is verified. Please reach out for support.",
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
                        color: const Color.fromRGBO(0, 92, 187, 1),
                        textColor: Colors.white,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0), 
                              ),
                        child: const Text("Get Support"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(1.0),
                  width: double.infinity,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: <Widget>[
                      Text(
                        "Active Schemes",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(16, 16, 22, 1),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                        SizedBox(height: 10),
                        Text("List of all the Schemes you can invest in")
                    ]
                  )
                ),
                const SizedBox(height: 20),
                MaterialButton(
                        height: 45.0,
                        minWidth: 150.0,
                        color: const Color.fromRGBO(113, 0, 153, 1),
                        textColor: Colors.white,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0), 
                              ),
                        child: const Text("Kubera Scheme"),
                ),
                InkWell(
                  onTap: () {
                    context.push('/kubera-scheme');
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.0), 
                      border: Border.all(
                        color: Colors.black, 
                        width: 1.0,         
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, 
                      children: [
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(245, 237, 255, 1), 
                            borderRadius: BorderRadius.circular(14.0), 
                          ),
                          child: const Text(
                            "Build Wealth With Kubera",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(42, 38, 38, 1),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.white, 
                            borderRadius: BorderRadius.circular(14.0), 
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start, 
                            children: <Widget>[
                              Text(
                                  "Safeguard your investment with Insurance Protection using Trade Credit Insurance",
                                  style: TextStyle(
                                    color: Color.fromRGBO(42, 38, 38, 1),
                                  ),
                              ),
                              SizedBox(height: 10),
                              Divider(color: Colors.black26),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 8),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'Fixed Returns',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 14
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        '100%',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Color.fromRGBO(42, 38, 38, 1),
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ]
                                  ), 
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'Tenure',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 14
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        '40 Months',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          color: Color.fromRGBO(42, 38, 38, 1),
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ]
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'Min. Investment',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 14
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        '₹10,00,000',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          color: Color.fromRGBO(42, 38, 38, 1),
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ]
                                  ),
                                ]
                              ),
                              SizedBox(height: 10),
                              Divider(color: Colors.black26),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 8),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'Risk Category',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 14
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'No Risk',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Color.fromRGBO(42, 38, 38, 1),
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ]
                                  ), 
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'Insured By',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 14
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'VIINDHYA BULLION',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          color: Color.fromRGBO(42, 38, 38, 1),
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ]
                                  ),
                                  SizedBox(width: 40),
                                ]
                              ),
                              SizedBox(height: 10),
                              Divider(color: Colors.black26),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Deal Size',
                                    style: TextStyle(
                                      color: Color.fromRGBO(42, 38, 38, 1),
                                      fontWeight: FontWeight.w700
                                    ),
                                  ),
                                  Text(
                                    '80% Filled',
                                    style: TextStyle(
                                      color: Color.fromRGBO(204, 81, 36, 1),
                                      fontWeight: FontWeight.w800
                                    ),
                                  ),
                                ]
                              ),
                            ]
                          )
                        ), 
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 50,),
                MaterialButton(
                        height: 45.0,
                        minWidth: 150.0,
                        color: const Color.fromRGBO(113, 0, 153, 1),
                        textColor: Colors.white,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0), 
                              ),
                        child: const Text("Digital Gold"),
                ),
                InkWell(
                  onTap: () {
                    context.push('/digital-gold-scheme');
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.0), 
                      border: Border.all(
                        color: Colors.black, 
                        width: 1.0,         
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, 
                      children: [
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(245, 237, 255, 1), 
                            borderRadius: BorderRadius.circular(14.0), 
                          ),
                          child: const Text(
                            "Balance Risk with Insurance Protection",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(42, 38, 38, 1),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.white, 
                            borderRadius: BorderRadius.circular(14.0), 
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start, 
                            children: <Widget>[
                              Text(
                                  "Safeguard your investment with Insurance Protection using Trade Credit Insurance",
                                  style: TextStyle(
                                    color: Color.fromRGBO(42, 38, 38, 1),
                                  ),
                              ),
                              SizedBox(height: 10),
                              Divider(color: Colors.black26),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 8),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'Fixed Returns',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 14
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        '100%',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Color.fromRGBO(42, 38, 38, 1),
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ]
                                  ), 
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'Tenure',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 14
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        '12 Months',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          color: Color.fromRGBO(42, 38, 38, 1),
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ]
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'Min. Investment',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 14
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        '₹100',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          color: Color.fromRGBO(42, 38, 38, 1),
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ]
                                  ),
                                ]
                              ),
                              SizedBox(height: 10),
                              Divider(color: Colors.black26),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 8),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'Risk Category',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 14
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'No Risk',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Color.fromRGBO(42, 38, 38, 1),
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ]
                                  ), 
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'Insured By',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 14
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'VIINDHYA BULLION',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          color: Color.fromRGBO(42, 38, 38, 1),
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ]
                                  ),
                                  SizedBox(width: 40),
                                ]
                              ),
                              SizedBox(height: 10),
                              Divider(color: Colors.black26),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Deal Size',
                                    style: TextStyle(
                                      color: Color.fromRGBO(42, 38, 38, 1),
                                      fontWeight: FontWeight.w700
                                    ),
                                  ),
                                  Text(
                                    '80% Filled',
                                    style: TextStyle(
                                      color: Color.fromRGBO(204, 81, 36, 1),
                                      fontWeight: FontWeight.w800
                                    ),
                                  ),
                                ]
                              ),
                            ]
                          )
                        ), 
                      ],
                    ),
                  ),
                )
              ]
            )
          ),
        )
      ),
    );
  }
}
