import 'package:auto_route/auto_route.dart';
import 'package:checkpoint/routing/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        // any routes that are outside the core app go here (login/sign up etc...)

        // core app screen is the wrapper for the entire app this will house the app and
        // will manage bottom/ top app bars etc...
        AutoRoute(
            initial: true,
            page: CoreAppRoute.page,
            path: '/coreApp',
            children: [
              // Each tab will be defined under the core app route
              // *** To hide the bottom nav bar for a route, include the line below in the auto route Widget.
              // *** meta: const {'hideBottomNav': true},
              AutoRoute(
                  path: 'homeTab',
                  initial: true,
                  page: HomeTabRoute.page,
                  children: [
                    // all child routes to a tab will be defined here.
                    AutoRoute(
                      page: HomeRoute.page,
                      initial: true,
                    ),
                  ]),

              AutoRoute(
                  path: 'searchTab',
                  page: SearchTabRoute.page,
                  children: [
                    // all child routes to a tab will be defined here.
                    AutoRoute(
                      page: SearchRoute.page,
                      initial: true,
                    ),
                  ]),
            ]),
      ];
}
