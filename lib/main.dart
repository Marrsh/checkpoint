import 'package:flutter/material.dart';
import 'package:checkpoint/bloc/auth/auth_bloc.dart';
import 'package:checkpoint/bloc/games/games_bloc.dart';
import 'package:checkpoint/routing/router.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => AuthBloc()),
    BlocProvider(create: (context) => GamesBloc())
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'level up',
      home: MaterialApp.router(
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
