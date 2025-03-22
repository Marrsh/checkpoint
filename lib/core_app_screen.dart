import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:level_up/routing/tab_route.dart';

@RoutePage()
class CoreAppScreen extends StatelessWidget {
  const CoreAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      physics: const NeverScrollableScrollPhysics(),
      routes: TabRoute.locations,
      builder: (context, screenContent, controller) {
        // If you pass hideBottomNav as a meta tag to a core app route, then that page will not show the bottom nav bar
        bool hideBottomNav =
            context.topRouteMatch.meta['hideBottomNav'] ?? false;

        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: screenContent,
          bottomNavigationBar: hideBottomNav
              ? null
              : BottomNavigationBar(
                  onTap: (tabIndex) {
                    context.navigateTo(TabRoute.locations[tabIndex]);
                  },
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.search),
                      label: 'Search',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      label: 'Profile',
                    ),
                  ],
                ),
        );
      },
    );
  }
}
