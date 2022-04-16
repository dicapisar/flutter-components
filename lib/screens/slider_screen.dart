import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

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
              max: 400,
              activeColor: AppTheme.primary,
              divisions: 10,
              value: _sliderValue,
              onChanged: _sliderEnable
                  ? (value) {
                      print(value);
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null,
            ),
            Checkbox(
              value: _sliderEnable,
              onChanged: (value) {
                _sliderEnable = value ?? true;
                setState(() {});
              },
            ),
            CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                _sliderEnable = value ?? true;
              }),
            ),
            Switch(
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                _sliderEnable = value;
              }),
            ),
            SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                _sliderEnable = value;
              }),
            ),
            const AboutListTile(),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://static.wikia.nocookie.net/death-battle-en-espanol/images/d/d1/Batman.png/revision/latest/scale-to-width-down/1200?cb=20210721231631&path-prefix=es'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            )
          ],
        ));
  }
}
