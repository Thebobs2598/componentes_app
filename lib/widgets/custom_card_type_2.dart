import 'package:componentes_app/themes/app_dark_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      shadowColor: AppDarkTheme.primary.withOpacity(0.5),
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      child: Column(
        children: [
          const FadeInImage(
            placeholder: AssetImage(
              'assets/jar-loading.gif',
            ),
            image: NetworkImage(
              'https://www.ninoversace.com/wp-content/uploads/landscape-mountains-sky-4843193.jpg',
            ),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: const Text('Un hermoso paisaje'),
          )
        ],
      ),
    );
  }
}
