import 'dart:convert';

import 'package:checkpoint/data/models/game.dart';
import 'package:checkpoint/data/repositories/auth_repository.dart';
import 'package:checkpoint/network.dart';
import 'package:checkpoint/utils/error_handler.dart';

class GamesRepository {
  get({required String query}) async {
    try {
      String token = await AuthRepository().getIgdbToken();

      var res = await Network().post(
          endpoint: 'games',
          url: Network.igdbUrl,
          jsonBody: query,
          headers: {'Authorization': 'Bearer $token'});

      var body = res.body;

      List<dynamic> decodedResponse = jsonDecode(body);

      List<Game> games = decodedResponse.map((game) {
        return Game.fromJson(game);
      }).toList();

      return games;
    } catch (e) {
      ErrorHandler.log(error: e.toString());
    }
  }

  // getCovers({required String query}) async {
  //   // TODO:: add service?
  //   try {
  //     String token = await AuthRepository().getIgdbToken();

  //     var res = await Network().post(
  //         endpoint: 'covers',
  //         url: Network.igdbUrl,
  //         jsonBody: query,
  //         headers: {'Authorization': 'Bearer $token'});

  //     var body = res.body;

  //     var decoded = jsonDecode(body);

  //     return decoded;
  //   } catch (e) {
  //     ErrorHandler.log(error: e.toString());
  //   }
  // }
}
