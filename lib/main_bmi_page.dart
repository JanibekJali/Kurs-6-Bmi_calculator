import 'package:bmi_calculator/widgets/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainBmiPage extends StatefulWidget {
  const MainBmiPage({Key key}) : super(key: key);

  @override
  _MainBmiPageState createState() => _MainBmiPageState();
}

class _MainBmiPageState extends State<MainBmiPage> {
  double _sliderValue = 165;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          children: [
            Row(
              children: const [
                CustomWidget(
                  text: 'male',
                  icons: FontAwesomeIcons.mars,
                ),
                SizedBox(
                  width: 5.0,
                ),
                CustomWidget(
                  text: 'female',
                  icons: FontAwesomeIcons.venus,
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    // color: const Color(0xff111327),
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height'.toUpperCase(),
                      style: TextStyle(fontSize: 25.0, letterSpacing: 1.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          _sliderValue.toStringAsFixed(0),
                          style: TextStyle(
                              fontSize: 50.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.red,
                          inactiveTrackColor: Colors.white,
                          thumbColor: Colors.red,
                          overlayColor: Colors.yellow),
                      child: Slider(
                        value: _sliderValue,
                        max: 230,
                        onChanged: (double adamdynTandoosu) {
                          setState(() {
                            _sliderValue = adamdynTandoosu;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/// Bul jakshy praktika emes
Expanded newMethod() {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
          // color: const Color(0xff111327),
          color: Colors.green,
          borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: [
          const FaIcon(
            FontAwesomeIcons.mars,
            size: 75,
          ),
          Text(
            'male'.toUpperCase(),
            style: const TextStyle(fontSize: 25.0),
          ),
        ],
      ),
    ),
  );
}
