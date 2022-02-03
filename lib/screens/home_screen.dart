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
                  onTap: () {},
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 10));
  }
}
