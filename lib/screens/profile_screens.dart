import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kubera_scheme/screens/address_screen.dart';
import 'package:kubera_scheme/screens/bank_account_screen.dart';
import 'package:kubera_scheme/screens/demart_account_screen.dart';
import 'package:kubera_scheme/screens/nominee_screen.dart';
import 'package:kubera_scheme/screens/personal_details.dart';

class ProfileScreens extends StatelessWidget {
  const ProfileScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                GoRouter.of(context).goNamed('main-page');
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text('Profile'),
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
          backgroundColor: const Color.fromRGBO(0, 92, 187, 1),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(
                      height: 80,
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              leading: Icon(
                                Icons.abc_outlined,
                              ),
                              title: Text('USER NAME'),
                              subtitle: Text('kyc pending'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: SizedBox(
                      height: 80,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const PersonalDetailsForm()),);
                        },
                        child: const Card(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: Icon(
                                  Icons.person_2_outlined,
                                  size: 40,
                                ),
                                title: Text('Personal Details'),
                                subtitle:
                                    Text(' Full name, Mobile num, Email, PAN'),
                                trailing: Icon(Icons.keyboard_arrow_right),
                              ),
                            ],
                          ),
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: SizedBox(
                      height: 80,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddressScreen()),);
                        },
                        child: const Card(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: Icon(
                                  Icons.location_on,
                                  size: 40,
                                ),
                                title: Text('Address'),
                                subtitle: Text(
                                    '  Address line, City, State, Country, Pincode'),
                                trailing: Icon(Icons.keyboard_arrow_right),
                              ),
                            ],
                          ),
                        ),
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: SizedBox(
                      height: 80,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const BankAccountScreen()),);
                        },
                        child: const Card(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: Icon(
                                  Icons.comment_bank_outlined,
                                  size: 40,
                                ),
                                title: Text('Bank Account'),
                                subtitle:
                                    Text(' Acc. Holder Name, Acc. Number, IFSC'),
                                trailing: Icon(Icons.keyboard_arrow_right),
                              ),
                            ],
                          ),
                        ),
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: SizedBox(
                      height: 80,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const DemartAccountScreen()),);
                        },
                        child: const Card(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: Icon(
                                  Icons.list_alt,
                                  size: 40,
                                ),
                                title: Text('Demat Account'),
                                subtitle: Text(' Demat Account Number'),
                                trailing: Icon(Icons.keyboard_arrow_right),
                              ),
                            ],
                          ),
                        ),
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: SizedBox(
                      height: 80,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const NomineeScreen()),);
                        },
                        child: const Card(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: Icon(
                                  Icons.groups_3_outlined,
                                  size: 40,
                                ),
                                title: Text('Nominee'),
                                subtitle: Text(' Nominee, Change nominee'),
                                trailing: Icon(Icons.keyboard_arrow_right),
                              ),
                            ],
                          ),
                        ),
                      )
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      )
    );
  }
}
