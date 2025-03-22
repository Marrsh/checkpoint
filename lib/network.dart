import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:level_up/data/repositories/auth_repository.dart';
import 'package:level_up/hidden_key.dart';
import 'package:level_up/utils/error_handler.dart';

const Map<String, String> defaultHeaders = {
  // 'Accept': 'application/json',
  'Client-ID': HiddenKey.igdbClientId,
  // 'Authorization': Bearer ...
};

class Network {
  static const baseUrl = "https://api.igdb.com/v4/";
  static const authUrl = 'https://id.twitch.tv/oauth2/token?';

  final Map<String, String> headers;

  Network({this.headers = defaultHeaders});

  get({required String endpoint}) async {
    // TODO add headers
    try {
      var request = http.get(Uri.parse(baseUrl + endpoint), headers: headers);
      http.Response response = await request;
      debugPrint(response.body);

      return response;
    } catch (e) {
      ErrorHandler.log(error: e.toString());
    }
  }

  post(
      {String? jsonBody,
      required String endpoint,
      url = baseUrl,
      String params = ''}) async {
    try {
      if (headers != defaultHeaders) {
        headers.addAll(defaultHeaders);
      }

      // String token = await AuthRepository().getFreshIgdbAuthToken();

      // headers.addAll({'Authorization': 'Bearer $token'});

      var request = http.post(
        Uri.parse(
          url + endpoint + params,
        ),
        headers: headers,
        body: jsonBody,
      );
      http.Response response = await request;
      debugPrint(response.body);

      return response;
    } catch (e) {
      ErrorHandler.log(error: e.toString());
    }
  }
}
