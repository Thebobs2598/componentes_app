import 'package:componentes_app/themes/app_dark_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders and Checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 900,
              activeColor: AppDarkTheme.primary,
              value: _sliderValue,
              onChanged: _sliderEnable
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null,
            ),
            // Checkbox(
            //   value: _sliderEnable,
            //   onChanged: (value) {
            //     _sliderEnable = value ?? true;
            //     setState(() {});
            //   },
            // ),
            // Switch(
            //   value: _sliderEnable,
            //   onChanged: (value) => setState(() {
            //     _sliderEnable = value;
            //   }),
            // ),
            CheckboxListTile(
              activeColor: AppDarkTheme.primary,
              title: const Text("Habilitar Slider"),
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                _sliderEnable = value ?? true;
              }),
            ),
            SwitchListTile.adaptive(
              activeColor: AppDarkTheme.primary,
              title: const Text("Habilitar Slider"),
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                _sliderEnable = value;
              }),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                    'https://i.pinimg.com/736x/11/d2/2d/11d22ddea533a5d7150ce3dccb284053.jpg',
                  ),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
          ],
        ));
  }
}
