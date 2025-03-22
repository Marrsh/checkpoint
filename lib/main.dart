import 'package:flutter/material.dart';
import 'package:level_up/bloc/auth/auth_bloc.dart';
import 'package:level_up/routing/router.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AuthBloc())],
      child: MyApp()));
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
