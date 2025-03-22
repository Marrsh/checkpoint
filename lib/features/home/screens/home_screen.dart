import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:level_up/bloc/auth/auth_bloc.dart';
import 'package:level_up/bloc/games/games_bloc.dart';
import 'package:level_up/bloc/loading_status.dart';
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
    return Scaffold(body: SafeArea(child: BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state.loadingStatus == LoadingStatus.loaded) {
          return const Padding(
            padding: EdgeInsets.all(Styles.generalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Level up',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Text(
                  'Featured',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                ),
                CarouselPreview(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Want to play',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                ),
                CarouselPreview(),
                Spacer(),
              ],
            ),
          );
        }

        return const CircularProgressIndicator();
      },
    )));
  }
}
