import 'package:flutter/material.dart';
import 'package:hs_product_crud/pages/splash/splash.dart';

import '../pages/home/home.dart';
import '../pages/settings/settings.dart';
import 'route_name.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splash:
        return _pageRouter(page: const Splash());

      case RouteName.home:
        return _pageRouter(page: const Home());

      case RouteName.settings:
        return MaterialPageRoute(builder: (_) => const Settings());
        
      default:
        return null;
    }
  }

  static _pageRouter({required Widget page}) {
    return MaterialPageRoute(
      builder: (_) => page,
    );
  }
}
