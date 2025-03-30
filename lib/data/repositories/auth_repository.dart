import 'dart:convert';

import 'package:checkpoint/hidden_key.dart';
import 'package:checkpoint/network.dart';
import 'package:checkpoint/utils/error_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  static const _igdbTokenKey = 'igdbKey';

  Future<String> getFreshIgdbAuthToken() async {
    try {
      var response = await Network().post(
          endpoint: '/token',
          url: 'https://id.twitch.tv/oauth2',
          params:
              '?client_id=${HiddenKey.igdbClientId}&client_secret=${HiddenKey.client_secret}&grant_type=client_credentials');

      var body = response.body;

      var decoded = jsonDecode(body);

      var apiKey = decoded['access_token'];

      return apiKey;
    } catch (e) {
      ErrorHandler.log(error: e.toString());
    }
    return '';
  }

  setIgdbToken({required String token}) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      prefs.setString(_igdbTokenKey, token);
    } catch (e) {
      ErrorHandler.log(error: e.toString());
    }
  }

  Future<String> getIgdbToken() async {
    String token = '';
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      token = prefs.getString(_igdbTokenKey) ?? '';
    } catch (e) {
      ErrorHandler.log(error: e.toString());
    }
    return token;
  }
}
