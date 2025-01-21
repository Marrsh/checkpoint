import 'package:auto_route/auto_route.dart';

//
// This screen is important, it is an empty screen for tab nested navigation, see the router file for more context.
//
// There is an issue with nested navigation for AutoRouter package, this is a workaround for nested navigation
// The issue with this workaround is that every nested route will be nested under this "tab route" for example the path would look like this
//
// /coreApp/tabName/nestedRoute
//
// you will not be able to go any deeper than "nested route" without setting up a new empty page with children.
// however you'll be able to set up all nested routes underneath this tab
// Seems there is not a concrete solution for this at the moment.
//
// TODO:: Please check to see if these tickets have been updated.
//
// https://github.com/Milad-Akarie/auto_route_library/issues/1790
// https://github.com/Milad-Akarie/auto_route_library/issues/1654
//

@RoutePage()
class HomeTabScreen extends AutoRouter {
  const HomeTabScreen({super.key});
}
