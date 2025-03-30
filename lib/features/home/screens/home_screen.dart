import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:checkpoint/bloc/auth/auth_bloc.dart';
import 'package:checkpoint/bloc/loading_status.dart';
import 'package:checkpoint/constants/styles.dart';
import 'package:checkpoint/features/home/widgets/carousel_preview.dart';

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
                    'Checkpoint',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Text(
                          'Popular this week', // check if there is an API for game popularity? OR do it based on review frequency
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SliverToBoxAdapter(child: CarouselPreview()),
                      SliverToBoxAdapter(
                        child: Text(
                          'Friend Activity', // check if there is an API for game popularity? OR do it based on review frequency
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SliverToBoxAdapter(child: CarouselPreview()),
                      SliverToBoxAdapter(
                        child: Text(
                          'Want to play', // check if there is an API for game popularity? OR do it based on review frequency
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SliverToBoxAdapter(child: CarouselPreview()),
                    ],
                  ),
                )
              ],
            ),
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    )));
  }
}
