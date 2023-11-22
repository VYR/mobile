import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:raoproject/constants.dart';
import 'package:raoproject/enums/shared_enum.dart';
import 'package:raoproject/screens/admin_home_screen.dart';
import 'package:raoproject/screens/common/alert_screen.dart';
import 'package:raoproject/utils/dio_client.dart';
import 'package:raoproject/utils/loggers.dart';
import 'package:raoproject/widgets/custom_button.dart';
import 'package:raoproject/widgets/custom_text_widget.dart';
import 'home_screen.dart';
import 'package:raoproject/utils/secure_data.dart';

const String logHead = 'Login';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  final String title = "Login";

  @override
  State<LoginScreen> createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  final GlobalKey<_LoginState> myWidgetKey = GlobalKey();
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  final SecureStorage storage = SecureStorage();

  bool _isLoading = false;
  bool _isClicked = false;

  @override
  void initState() {
    super.initState();
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
        backgroundColor: Colors.white,
        body: GFFloatingWidget(
          verticalPosition: 150,
          showBlurness: showblur,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(
                  child: Image.asset('assets/images/logo.webp'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: CustomTextWidget(
                      textController: emailController,
                      prefixIcon: const Icon(Icons.account_circle_sharp),
                      label: 'Email or Phone Number',
                      hint: 'Enter valid Email  or Phone'),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
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
                  padding: const EdgeInsets.only(top: 20.0),
                  child: CustomButton(
                      text: "LOGIN",
                      onPressed: () async {
                        //showAlert();
                        Map userInfo = {
                          "email": emailController.text,
                          "password": passwordController.text
                        };
                        dioClient = DioClient(context);
                        Map retrievedUser =
                            await dioClient.login(userInfo: userInfo);
                        if (retrievedUser.isNotEmpty) {
                          await SecureStorage.setLocalData(spToken,
                              retrievedUser['access_token'], SPTypes.string);
                          await SecureStorage.setLocalData(
                              spUserName,
                              retrievedUser['user']['userName'],
                              SPTypes.string);
                          await SecureStorage.setLocalData(spEmail,
                              retrievedUser['user']['email'], SPTypes.string);
                          await SecureStorage.setLocalData(spRole,
                              retrievedUser['user']['role'], SPTypes.string);
                          print(retrievedUser['access_token']);
                          String role = await SecureStorage.getLocalData(
                              spRole, SPTypes.string);

                          print(role);
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        (role == Roles.user.name)
                                            ? const HomeScreen()
                                            : const AdminHome()));
                          });
                        } else {}
                      }),
                ),
                SizedBox(
                    height: 50,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Expanded(
                              child: Text('Forgot your login details? ')),
                          Expanded(
                            child: InkWell(
                                onTap: () {
                                  logDebug(logHead, 'hello');
                                },
                                child: const Text(
                                  'Get help logging in. gf dfgh gfhgfh hs',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.blue),
                                )),
                          )
                        ],
                      ),
                    )),
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
