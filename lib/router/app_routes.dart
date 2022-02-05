import 'package:componentes_app/models/models.dart';
import 'package:componentes_app/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    //Home
    // MenuOption(
    //   route: 'home',
    //   name: 'HomeScreen',
    //   screen: const HomeScreen(),
    //   icon: Icons.home_outlined,
    // ),
    //ListView 1
    MenuOption(
      route: 'listview1',
      name: 'Listview Tipo 1',
      screen: const ListView1Screen(),
      icon: Icons.list_alt_rounded,
    ),
    //ListView 2
    MenuOption(
      route: 'listview2',
      name: 'Listview Tipo 2',
      screen: const ListView2Screen(),
      icon: Icons.list_sharp,
    ),
    //Alert
    MenuOption(
      route: 'alert',
      name: 'Alertas',
      screen: const AlertScreen(),
      icon: Icons.add_alert_rounded,
    ),
    //Cards
    MenuOption(
      route: 'card',
      name: 'Cards',
      screen: const CardScreen(),
      icon: Icons.calendar_today_outlined,
    ),
    MenuOption(
      route: 'avatar',
      name: 'Avatar',
      screen: const AvatarScreen(),
      icon: Icons.account_circle_sharp,
    ),
    MenuOption(
      route: 'container',
      name: 'Animated Container',
      screen: const AnimatedScreen(),
      icon: Icons.play_arrow_rounded,
    ),
    MenuOption(
        route: 'inputs',
        name: 'Text inputs',
        screen: const InputsScreen(),
        icon: Icons.input_rounded),
  ];

  // **Otra opción para rutas
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listView1': (BuildContext context) => const ListView1Screen(),
  //   'listView2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // print(settings);
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
