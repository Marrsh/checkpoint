import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:level_up/constants/styles.dart';
import 'package:level_up/modules/home/presentation/widgets/carousel_preview.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const cardSpacing = 10.0;
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
