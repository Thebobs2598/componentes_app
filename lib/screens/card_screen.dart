import 'package:componentes_app/themes/themes.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children: [
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.photo_album_outlined, color: AppDarkTheme.primary,),
                  title: Text('Soy un titulo'),
                  subtitle: Text('Eiusmod commodo anim duis dolor dolore .'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
