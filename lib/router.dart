import 'package:amazonclone/features/admin/screens/add_product_screen.dart';
import 'package:amazonclone/features/auth/screens/auth_screen.dart';
import 'package:amazonclone/models/product.dart';
import 'package:flutter/material.dart';

import 'common/widgets/bottom_bar.dart';
import 'features/home/screens/category_details_screen.dart';
import 'features/home/screens/home_screen.dart';
import 'features/product_details/screens/product_details_screen.dart';
import 'features/search/screens/search_screen.dart';

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

    case AddProductScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: ((_) {
          return const AddProductScreen();
        }),
      );

    case CategoryDetailsScreen.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: ((_) {
          return CategoryDetailsScreen(
            category: category,
          );
        }),
      );

    case SearchScreen.routeName:
      var searchQuery = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: ((_) {
          return SearchScreen(
            searchQuery: searchQuery,
          );
        }),
      );

    case ProductDetailScreen.routeName:
      var product = routeSettings.arguments as Product;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: ((_) {
          return ProductDetailScreen(
            product: product,
          );
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
