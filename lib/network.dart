import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const baseUrl = "https://api.rawg.io/api";

const Map<String, String> defaultHeaders = {
  'Accept': 'application/json',
  'key': '0791e1a4b0f04440ab7329b0276f80a5',
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
