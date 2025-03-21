import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:level_up/api_key.dart';

const baseUrl = "https://api.rawg.io/api";

const Map<String, String> defaultHeaders = {
  'Accept': 'application/json',
  'key': rawGKey,
};

class Network {
  final Map<String, String> headers;

  Network({
    this.headers = defaultHeaders,
  });

  get({required String endpoint}) async {
    var request = http.get(Uri.parse(baseUrl + endpoint), headers: headers);

    return requestHandler(request);
  }

  requestHandler(request) async {
    late http.Response response;

    response = await request;

    debugPrint(response.body);

    return response;
  }
}
