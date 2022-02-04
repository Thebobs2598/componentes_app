import 'package:flutter/material.dart';

import 'package:componentes_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            name: 'Unas montañas hermosas',
            imageUrl:
                'https://www.ninoversace.com/wp-content/uploads/landscape-mountains-sky-4843193.jpg',
          ),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            name: 'Un lago precioso',
            imageUrl:
                'http://www.solofondos.com/wp-content/uploads/2016/04/mountain-landscape-wallpaper.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg',
          ),
        ],
      ),
    );
  }
}
