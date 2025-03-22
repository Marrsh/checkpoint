import 'dart:convert';

import 'package:level_up/data/repositories/auth_repository.dart';
import 'package:level_up/network.dart';
import 'package:level_up/utils/error_handler.dart';

class GamesRepository {
  get() async {
    String query = 'fields name;limit 10;';

    try {
      String token = await AuthRepository().getIgdbToken();

      var res = await Network().post(
          endpoint: 'games',
          url: Network.igdbUrl,
          jsonBody: query,
          headers: {'Authorization': 'Bearer $token'});

      var body = res.body;

      var decoded = jsonDecode(body);

      return decoded;
    } catch (e) {
      ErrorHandler.log(error: e.toString());
    }
  }
}
