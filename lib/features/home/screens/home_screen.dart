import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:level_up/api_key.dart';
import 'package:level_up/constants/styles.dart';
import 'package:level_up/features/home/presentation/widgets/carousel_preview.dart';
import 'package:level_up/network.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  dynamic someGames = [];

  grabSomeGames() async {
    var games = await Network().get(endpoint: '/games?key=$rawGKey');

    print(games);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    grabSomeGames();
    return const Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(Styles.generalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Level up',
            ),
            Text(
              'Featured',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.left,
            ),
            CarouselPreview(),
            Text(
              'Genres',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.left,
            ),
            CarouselPreview(),
            Spacer()
          ],
        ),
      ),
    ));
  }
}
