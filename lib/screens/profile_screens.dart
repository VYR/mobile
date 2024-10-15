import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreens extends StatelessWidget {
  const ProfileScreens({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
             GoRouter.of(context).goNamed('main-page');
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back)),
        iconTheme:  const IconThemeData(color: Colors.white),
        title: const Text('Profile'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: const Color.fromRGBO(0, 92, 187, 1),     
      ),
      body: const SafeArea(
        child: SingleChildScrollView( 
          child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5),
                child: SizedBox(
                  height: 80,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text('USER NAME'),
                          subtitle: Text('kyc pending'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: SizedBox(
                  height: 80,
                  child: Card(
                    //card color  color: Color.fromARGB(42, 38, 38,1),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text('Personal Details'),
                          subtitle: Text(' Full name, Mobile num, Email, PAN'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: SizedBox(
                  height: 80,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text('Address'),
                          subtitle: Text(
                              '  Address line, City, State, Country, Pincode'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: SizedBox(
                  height: 80,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text('Bank Account'),
                          subtitle:
                              Text(' Acc. Holder Name, Acc. Number, IFSC'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: SizedBox(
                  height: 80,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text('Demat Account'),
                          subtitle: Text(' Demat Account Number'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: SizedBox(
                  height: 80,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text('Nominee'),
                          subtitle: Text(' Nominee, Change nominee'),
                        ),
                      ],
                    ),
                  ),
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
