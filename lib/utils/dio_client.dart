import 'package:dio/dio.dart';
//import 'package:raoproject/login.dart';
import 'package:raoproject/models/user.dart';
import 'package:raoproject/models/user_info.dart';
import 'package:raoproject/utils/loggers.dart';
import 'package:raoproject/utils/logging.dart';

String _h = "DioClient";

class DioClient {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://www.puppysoftwares.com/food-delivery/public/api/',
      connectTimeout: const Duration(seconds: 5000),
      receiveTimeout: const Duration(seconds: 3000),
    ),
  )..interceptors.add(Logging());

  Future<Map> login({required Map userInfo}) async {
    var retrievedUser = {};

    try {
      Response response = await _dio.post(
        'auth/login',
        data: userInfo,
      );

      logDebug(_h, 'User created: ${response.data}');

      retrievedUser = response.data;
    } catch (e) {
      logDebug(_h, 'Error creating user: $e');
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
        logDebug(_h, '${e.message}');
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
