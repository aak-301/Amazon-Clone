import 'package:amazonclone/features/auth/screens/auth_screen.dart';
import 'package:flutter/material.dart';

import 'common/widgets/bottom_bar.dart';
import 'features/home/screens/home_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: ((_) {
          return const AuthScreen();
        }),
      );

    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: ((_) {
          return const HomeScreen();
        }),
      );

      
    case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: ((_) {
          return const BottomBar();
        }),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: ((_) {
          return const Scaffold(
            body: Center(
              child: Text('Something went wrong'),
            ),
          );
        }),
      );
  }
}
