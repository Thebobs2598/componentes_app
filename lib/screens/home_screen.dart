import 'package:flutter/material.dart';

import 'package:componentes_app/router/app_routes.dart';
import 'package:componentes_app/themes/themes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en FLutter'),
          
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(menuOptions[index].icon,color: AppDarkTheme.primary),
              title: Text(menuOptions[index].name),
              onTap: () {
                // final route = MaterialPageRoute(
                //   builder: (context) => const ListView1Screen(),
                // );
                // Navigator.pushReplacement(context, route);
                Navigator.pushNamed(context, menuOptions[index].route);
                
              },
            );
          },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: menuOptions.length,
        ));
  }
}
