import 'package:rz_test/data/dto/user_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static const _userData = 'user_data';

  static Future<bool> hasUserData() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getBool(_userData) == true;
  }

  static Future<void> saveUserData(UserDTO userData) async {
    final prefs = await SharedPreferences.getInstance();
    final json = userData.toJson();

    prefs.setString(_userData, json.toString());
  }

  static Future<UserDTO> getUserData() async {
    final prefs = await SharedPreferences.getInstance();
    final stringJson = prefs.getString(_userData);

    return UserDTO.fromJson(stringJson);
  }
}