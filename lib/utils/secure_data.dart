import 'package:raoproject/enums/shared_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecureStorage {
  static Future<dynamic> getLocalData(String key, SPTypes type) async {
    SharedPreferences storage = await SharedPreferences.getInstance();
    switch (type) {
      case SPTypes.string:
        return storage.getString(key);
      case SPTypes.int:
        return storage.getInt(key);
      case SPTypes.double:
        return storage.getDouble(key);
      case SPTypes.bool:
        return storage.getBool(key);
    }
  }

  static Future setLocalData(String key, dynamic data, SPTypes type) async {
    SharedPreferences storage = await SharedPreferences.getInstance();
    switch (type) {
      case SPTypes.string:
        await storage.setString(key, data);
        break;
      case SPTypes.int:
        await storage.setInt(key, data);
        break;
      case SPTypes.double:
        await storage.setDouble(key, data);
        break;
      case SPTypes.bool:
        await storage.setBool(key, data);
        break;
    }
  }
}
