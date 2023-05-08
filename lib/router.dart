import 'package:amazonclone/features/auth/screens/auth_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: ((_) {
          return const AuthScreen();
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
