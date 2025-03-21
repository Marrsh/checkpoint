import 'package:flutter/material.dart';
import 'package:level_up/routing/router.dart';

void main() {
  runApp(MyApp());
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
