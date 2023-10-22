import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  static final SharedPrefService _instance = SharedPrefService._();

  factory SharedPrefService() {
    return _instance;
  }

  SharedPrefService._();

  static SharedPrefService get instance => _instance;

  Future onInit() async {
    try {
      _sharedPref = await SharedPreferences.getInstance();
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  late SharedPreferences _sharedPref;

  static const String _accessToken = "access_token";
  static const String _refreshToken = "refresh_token";
  // static const String _user = "user";
  // static const String _userName = "user_name";
  // static const String _password = "password";

  String? get accessToken {
    return _sharedPref.getString(_accessToken);
  }

  Future<bool> setAccessToken({required String accessToken}) {
    return _sharedPref.setString(_accessToken, accessToken);
  }

  Future<bool> deleteAccessToken() {
    return _sharedPref.remove(_accessToken);
  }

  String? get userRefreshToken {
    return _sharedPref.getString(_refreshToken);
  }

  Future<bool> setRefreshToken({required String userRefreshToken}) {
    return _sharedPref.setString(_refreshToken, userRefreshToken);
  }

  Future<bool> deleteRefreshToken() {
    return _sharedPref.remove(_refreshToken);
  }
}
