import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:raoproject/constants.dart';
import 'package:raoproject/enums/shared_enum.dart';
import 'package:raoproject/screens/home_page.dart';
import 'package:raoproject/screens/login_screen.dart';
import 'package:raoproject/utils/loggers.dart';
import 'package:raoproject/utils/secure_data.dart';
import 'package:raoproject/widgets/custom_left_right_widget.dart';
import 'package:raoproject/widgets/custom_text_label_widget.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

const String logHead = 'Schemes';

class SchemesScreen extends StatefulWidget {
  const SchemesScreen({super.key});

  @override
  State<SchemesScreen> createState() => _SchemesScreenState();
}

class _SchemesScreenState extends State<SchemesScreen> {
  Map userInfo = {
    "userId": '',
    "email": '',
    "userName": '',
    "role": '',
    "token": ''
  };
  final Razorpay _razorpay = Razorpay();
  initiateRazorPay() { 
   // To handle different event with previous functions  
   _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess); 
   _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError); 
   _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet); 
 }
  void _handlePaymentSuccess(PaymentSuccessResponse response) { 
    // Do something when payment succeeds 
  } 
  void _handlePaymentError(PaymentFailureResponse response) { 
    // Do something when payment fails 
  } 
    
  void _handleExternalWallet(ExternalWalletResponse response) { 
    // Do something when an external wallet is selected 
  }

  @override
  initState() {
    super.initState();
    getData();
  }

  getData() async {
    userInfo[spUserName] =
        await SecureStorage.getLocalData(spUserName, SPTypes.string);
    userInfo[spEmail] =
        await SecureStorage.getLocalData(spEmail, SPTypes.string);
    userInfo[spUserId] =
        await SecureStorage.getLocalData(spUserId, SPTypes.string);
    userInfo[spRole] = await SecureStorage.getLocalData(spRole, SPTypes.string);
    logDebug(logHead, "role: ${userInfo[spRole]}");
    logDebug(logHead, "token: ${userInfo[spToken]}");
    setState(() {
      userInfo = userInfo;
    });
    // print(userName);
  }

  @override
  Widget build(BuildContext context) {
    // print(userName);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Schemes',
        ),
        backgroundColor: themeBackground,
        foregroundColor: themeForeground,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
          child: Column(children: <Widget>[
            GFCard(
              boxFit: BoxFit.cover,
              title: const GFListTile(
                avatar: GFAvatar(
                  backgroundImage: AssetImage('your asset image'),
                ),
                title: Text('Card Title'),
                subTitle: Text('Card Sub Title'),
              ),
              content:
                  const Text("Some quick example text to build on the card"),
              buttonBar: GFButtonBar(
                children: <Widget>[
                  GFButton(
                    onPressed: () {
                      logDebug(logHead, "Hi");
                    },
                    text: 'Apply',
                  ),
                  GFButton(
                    onPressed: () {},
                    text: 'Cancel',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
           const SizedBox(height: 8),
          ]),
        ),
      ),
    );
  }
}
