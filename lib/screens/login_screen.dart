import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
import 'package:raoproject/controllers/my_home_page_controller.dart';


const String logHead = 'Login';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  final String title = "Login";
  static MyHomePageController controller = Get.put(MyHomePageController());

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
                SizedBox(height: MediaQuery.of(context).size.width/6),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: CustomTextWidget(
                      textController: emailController,
                      prefixIcon: const Icon(Icons.account_circle_sharp),
                      label: 'Email or User ID',
                      hint: 'Enter valid Email  or User ID'),
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
                SizedBox(height: MediaQuery.of(context).size.width/12),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: CustomButton(
                      text: "LOGIN",
                      onPressed: () async {
                        {
      
    
                        alertWidget = CustomAlertWidget(
                              isLoading: isLoading);
                        }
                        setState(() {
                          isLoading = true;

                        });
                        // showAlert();
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
                          //print(retrievedUser['access_token']);
                          String role = await SecureStorage.getLocalData(
                              spRole, SPTypes.string);
                          print(role);
                          //print(role);
                          setState(() {
                            alertWidget = null;
                            isLoading=false;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        (role == "Scheme Member")
                                            ? const HomeScreen()
                                            : const AdminHome()));
                          });
                        } else {
                          setState(() {
                            isLoading = false;
                            print(isLoading);
                          });
                        }
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: CustomButton(
                      text: "Create an Account",
                      onPressed: () async {
                        setState(() {
                          Navigator.of(context).pushReplacementNamed('/register');
                        });

                      }),
                )
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


    showAlert123() {
    setState(() {
      showblur = true;
      isLoading = true;
    alertWidget = CustomAlertWidget(
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


