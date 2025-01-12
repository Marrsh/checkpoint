import 'package:auto_route/auto_route.dart';
import 'package:level_up/modules/home/presentation/screens/home_screen.dart';
import 'package:level_up/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),

        /// routes go here
      ];
}
