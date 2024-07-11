import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:raoproject/models/user.dart';
import 'package:raoproject/models/user_info.dart';
import 'package:raoproject/utils/loggers.dart';
import 'package:raoproject/utils/logging.dart';

const String _h = 'DioClient';
Map<String, dynamic> dialogData = {};

class DioClient {
  late BuildContext screenContext;
  late BuildContext dialogContext;
  DioClient(BuildContext context) {
    screenContext = context;
    dialogData['open'] = true;
    // loadDialog();
  }
  //Local
  //final baseUrl='http://localhost/food-delivery/public/api/';
  //Prod
  //final baseUrl='https://www.puppysoftwares.com/food-delivery/public/api/';

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://savegoldscheme.com/schemes-40/back-end/public/api/',
      connectTimeout: const Duration(seconds: 5000),
      receiveTimeout: const Duration(seconds: 3000),
    ),
  )..interceptors.add(Logging());
/*   closeDialog() {
    if (dialogContext != null) {
      Navigator.pop(dialogContext);
    } 
  }
*/
  Future<void> loadDialog() async {
    showDialog(
        context: screenContext,
        barrierDismissible: false,
        builder: (context) {
          dialogContext = context;
          if (dialogData['open']) {
            return Dialog(
              insetPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
              //padding: const EdgeInsets.only(left: 0.0, right: 0.0),
              child: Container(
                margin: const EdgeInsets.only(left: 0.0, right: 0.0),
                padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [Center(child: CircularProgressIndicator())],
                  ),
                ),
              ),
            );
          } else {
            return AlertDialog(
              title: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.greenAccent),
                // color: Colors.yellow,
                child: const Row(
                  children: [
                    Icon(Icons.info, color: Colors.red),
                    SizedBox(width: 8),
                    Text(
                      'Alert Dialog Title',
                      style: TextStyle(fontSize: 18, color: Colors.red),
                    ),
                  ],
                ),
              ),
              actionsAlignment: MainAxisAlignment.spaceEvenly,
              insetPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
              //padding: const EdgeInsets.only(left: 0.0, right: 0.0),
              content: Container(
                margin: const EdgeInsets.only(left: 0.0, right: 0.0),
                padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('ID: '),
                    Text('Name:'),
                    Text('Job: '),
                    Text('Created at: '),
                  ],
                ),
              ),
              actions: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Ok'))
              ],
            );
          }
        });
  }

  Future<Map> login({required Map userInfo}) async {
    var retrievedUser = {};
    try {
      Response response = await _dio.post(
        'login',
        data: {'userId': userInfo['email'],'password': userInfo['password']},
      );

      logDebug(_h, 'User request: ${userInfo}');
      logDebug(_h, 'User created: ${response.data}');

      retrievedUser = response.data;
      //closeDialog();
    } catch (e) {

      logDebug(_h, 'User created: ${userInfo}');
      logDebug(_h, 'Error creating user: $e');
      // dialogData['open'] = false;
      //closeDialog();
      // loadDialog();
    }
    return retrievedUser;
  }
  Future<Map> register({required Map userInfo}) async {
    var retrievedUser = {};
    try {
      Response response = await _dio.post(
        'add-update-users',
        data: userInfo,
      );

      logDebug(_h, 'User created: ${response.data}');

      retrievedUser = response.data;
      //closeDialog();
    } catch (e) {

      logDebug(_h, 'User created: ${userInfo}');
      logDebug(_h, 'Error creating user: $e');
      // dialogData['open'] = false;
      //closeDialog();
      // loadDialog();
    }
    return retrievedUser;
  }

  Future<User?> getUser({required String id}) async {
    User? user;

    try {
      Response userData = await _dio.get('auth/login');

      logDebug(_h, 'User Info: ${userData.data}');

      user = User.fromJson(userData.data);
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        logDebug(_h, 'Dio error!');
        logDebug(_h, 'STATUS: ${e.response?.statusCode}');
        logDebug(_h, 'DATA: ${e.response?.data}');
        logDebug(_h, 'HEADERS: ${e.response?.headers}');
      } else {
        // Error due to setting up or sending the request
        logDebug(_h, 'Error sending request!');
        logDebug(_h, "$e.message");
      }
    }

    return user;
  }

  Future<UserInfo?> createUser({required UserInfo userInfo}) async {
    UserInfo? retrievedUser;

    try {
      Response response = await _dio.post(
        '/users',
        data: userInfo.toJson(),
      );

      logDebug(_h, 'User created: ${response.data}');

      retrievedUser = UserInfo.fromJson(response.data);
    } catch (e) {
      logDebug(_h, 'Error creating user: $e');
    }

    return retrievedUser;
  }

  Future<UserInfo?> updateUser({
    required UserInfo userInfo,
    required String id,
  }) async {
    UserInfo? updatedUser;

    try {
      Response response = await _dio.put(
        '/users/$id',
        data: userInfo.toJson(),
      );

      logDebug(_h, 'User updated: ${response.data}');

      updatedUser = UserInfo.fromJson(response.data);
    } catch (e) {
      logDebug(_h, 'Error updating user: $e');
    }

    return updatedUser;
  }

  Future<void> deleteUser({required String id}) async {
    try {
      await _dio.delete('/users/$id');
      logDebug(_h, 'User deleted!');
    } catch (e) {
      logDebug(_h, 'Error deleting user: $e');
    }
  }
}
