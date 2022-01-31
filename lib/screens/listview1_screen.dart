import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['Megaman', 'Metal Gear', 'Lolsito'];
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView(
        children: [
          ...options
              .map(
                (e) => ListTile(
                  trailing: Icon(Icons.arrow_forward_sharp),
                  title: Text(e),
                ),
              )
              .toList(),
          
        ],
      ),
    );
  }
}
