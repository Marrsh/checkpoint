import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:level_up/bloc/auth/auth_bloc.dart';
import 'package:level_up/bloc/games/games_bloc.dart';
import 'package:level_up/constants/styles.dart';
import 'package:level_up/data/repositories/auth_repository.dart';
import 'package:level_up/features/home/widgets/carousel_preview.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context
        .read<AuthBloc>()
        .add(RequestIDGBAuth()); // TODO move to splash/ launch screen

    // AuthRepository().setIgdbToken();
  }

  @override
  Widget build(BuildContext context) {
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
    )));
  }
}
