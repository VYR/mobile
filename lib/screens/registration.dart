import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getwidget/getwidget.dart';
// import 'package:raoproject/constants.dart';
// import 'package:raoproject/enums/shared_enum.dart';
// import 'package:raoproject/screens/admin_home_screen.dart';
import 'package:raoproject/screens/common/alert_screen.dart';
import 'package:raoproject/utils/dio_client.dart';
import 'package:raoproject/utils/loggers.dart';
import 'package:raoproject/widgets/custom_button.dart';
import 'package:raoproject/widgets/custom_text_widget.dart';
// import 'home_screen.dart';
import 'package:raoproject/utils/secure_data.dart';

const String logHead = 'Login';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});
  final String title = "Login";

  @override
  State<RegistrationScreen> createState() => _RegistrationState();
}

class _RegistrationState extends State<RegistrationScreen> {
  final GlobalKey<_RegistrationState> myWidgetKey = GlobalKey();
  late final TextEditingController firstNameController;
  late final TextEditingController lastNameController;
  late final TextEditingController emailController;
  late final TextEditingController phoneNumberController;
  late final TextEditingController passwordController;
  final SecureStorage storage = SecureStorage();

/*   bool _isLoading = false;
  bool _isClicked = false; */

  @override
  void initState() {
    super.initState();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    phoneNumberController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  Widget? alertWidget;
  bool showblur = false;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    //final context = myWidgetKey.currentContext;
    late DioClient dioClient;

    return Scaffold(
        body: GFFloatingWidget(
          verticalPosition: 150,
          showBlurness: showblur,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.width/6),
                Center(
                  child: Image.asset('assets/images/logo.png',
                      width: MediaQuery.of(context).size.width/2,
                      alignment: Alignment.center),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: CustomTextWidget(
                      textController: firstNameController,
                      prefixIcon: const Icon(Icons.account_circle_sharp),
                      label: 'First Name',
                      hint: 'Enter First Name'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: CustomTextWidget(
                      textController: lastNameController,
                      prefixIcon: const Icon(Icons.account_circle_sharp),
                      label: 'Last Name',
                      hint: 'Enter Last Name'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: CustomTextWidget(
                      textController: emailController,
                      prefixIcon: const Icon(Icons.account_circle_sharp),
                      label: 'Email ',
                      keyboardType: TextInputType.emailAddress,
                      hint: 'Enter valid Email'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: CustomTextWidget(
                      textController: phoneNumberController,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(10)
                      ] ,
                      prefixIcon: const Icon(Icons.account_circle_sharp),
                      label: 'Phone Number',
                      keyboardType: TextInputType.number,
                      hint: 'Enter valid Phone Number'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: CustomTextWidget(
                      textController: passwordController,
                      prefixIcon: const Icon(Icons.lock),
                      label: 'Password',
                      hint: 'Enter valid password',
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: CustomButton(
                      text: "Create Account",
                      onPressed: () async {
                        //showAlert();
                        Map userInfo = {
                          "email": emailController.text,
                          "entitlement":"UPDATE_USER,OWN_SCHEMES,APPLY_SCHEMES",
                          "firstName": firstNameController.text,
                          "lastName": lastNameController.text,
                          "mobilePhone": phoneNumberController.text,
                          "password": passwordController.text,
                          "role":"Scheme Member",
                          "userType":0
                        };
                        dioClient = DioClient(context);
                        Map retrievedUser =
                        await dioClient.register(userInfo: userInfo);
                        if (retrievedUser.isNotEmpty) {
                          logDebug('','register: $retrievedUser');
                          setState(() {
                            Navigator.of(context).pushReplacementNamed('/login');
                          });
                        } else {}
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: CustomButton(
                      text: "LOGIN",
                      onPressed: () async {
                          setState(() {
                            Navigator.of(context).pushReplacementNamed('/login');
                          });

                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child:InkWell(
                        onTap: () {
                          logDebug(logHead, 'hello');
                        },
                        child: const Text(
                          'Forgot your password?',
                          style: TextStyle(
                              fontSize: 14, color: Colors.white),
                        )),

                ),
                SizedBox(height: MediaQuery.of(context).size.width/6),
              ],
            ),
          ),
          child: alertWidget,
        ));
  }

  showAlert() {
    setState(() {
      showblur = true;
      isLoading = true;
      alertWidget = CustomAlertWidget(
          title: 'Login Failed',
          content: 'data',
          onClose: () {
            setState(() {
              alertWidget = null;
              showblur = false;
              isLoading = false;
            });
          },
          isLoading: isLoading);
    });
  }
}
