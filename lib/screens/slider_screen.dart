import 'package:componentes_app/themes/app_dark_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders and Checks'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Slider.adaptive(
                min: 50,
                max: 400,
                activeColor: AppDarkTheme.primary,
                divisions: 10,
                value: _sliderValue,
                onChanged: (value) {
                  _sliderValue = value;
                  setState(() {});
                },
              ),
              Image(
                image: const NetworkImage(
                  'https://www.teahub.io/photos/full/317-3178170_imagenes-de-motos-deportivas.jpg',
                ),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ));
  }
}
