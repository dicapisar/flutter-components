import 'package:flutter/material.dart';

import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOption = <MenuOption>[
    // Todo: borrar home
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home_outlined),
    MenuOption(
        route: 'listview1',
        name: 'List View Type 1',
        screen: const ListView1Screen(),
        icon: Icons.list_alt_outlined),
    MenuOption(
        route: 'listview2',
        name: 'List View Type 2',
        screen: const ListView2Screen(),
        icon: Icons.list_outlined),
    MenuOption(
        route: 'alert',
        name: 'Alert',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOption(
        route: 'card',
        name: 'Card',
        screen: const CardScreen(),
        icon: Icons.cast_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRutes() {
    Map<String, Widget Function(BuildContext)> appRutes = {};

    for (final option in menuOption) {
      appRutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
