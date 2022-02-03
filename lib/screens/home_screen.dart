import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en FLutter'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: const Text('Nombbre de lla ruta'),
                  leading: const Icon(Icons.access_time_filled_sharp),
                  onTap: () {
                    // final route = MaterialPageRoute(
                    //   builder: (context) => const ListView1Screen(),
                    // );
                    // Navigator.pushReplacement(context, route);
                    Navigator.pushNamed(context, 'card');
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 10));
  }
}
