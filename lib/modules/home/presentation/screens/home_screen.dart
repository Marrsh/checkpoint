import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:level_up/modules/home/presentation/widgets/game_card.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [Text('title here'), Spacer(), GameCard(), Spacer()],
      )

          // Center(
          //   child: Text("Hello world"),
          // ),
          ),
    );
  }
}
