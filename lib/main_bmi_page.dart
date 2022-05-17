import 'package:bmi_calculator/result_page.dart';
import 'package:bmi_calculator/widgets/custom_widget.dart';
import 'package:bmi_calculator/widgets/gender_widget.dart';
import 'package:bmi_calculator/widgets/height_widget.dart';
import 'package:bmi_calculator/widgets/weight_age_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'brain/bmi_brain.dart';
import 'widgets/button_calculate.dart';

enum Gender {
  Male,
  Female,
  None,
}

enum Toyota { Rav4, LandCruiser, window }

class MainBmiPage extends StatefulWidget {
  const MainBmiPage({Key key}) : super(key: key);

  @override
  _MainBmiPageState createState() => _MainBmiPageState();
}

class _MainBmiPageState extends State<MainBmiPage> {
  double _sliderValue = 165;
  int _weight = 70;
  int _age = 30;
  Color _activeTus = Color.fromARGB(255, 130, 131, 151);
  Color _inactiveTus = const Color(0xff111327);
  // bool _maleKnopka = false;
  // bool _femaleKnopka = false;

  Gender _gender = Gender.None;

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
            Expanded(
              child: Row(
                children: [
                  CustomWidget(
                    onTap: () {
                      setState(() {
                        // _maleKnopka = true;
                        // _maleKnopka = !_maleKnopka;
                        _gender = Gender.Male;
                      });
                    },
                    // color: _maleKnopka == true ? _activeTus : _inactiveTus,
                    color: _gender == Gender.Male ? _activeTus : _inactiveTus,
                    widget: const GenderWidget(
                        icons: FontAwesomeIcons.mars, text: 'male'),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  CustomWidget(
                    onTap: () {
                      setState(() {
                        // _femaleKnopka = true;
                        // _femaleKnopka = !_femaleKnopka;
                        _gender = Gender.Female;
                      });
                    },
                    // color: _femaleKnopka == true ? _activeTus : _inactiveTus,
                    color: _gender == Gender.Female ? _activeTus : _inactiveTus,
                    widget: const GenderWidget(
                        icons: FontAwesomeIcons.venus, text: 'female'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            CustomWidget(
              widget: HeightWidget(
                  onPressed: (double ozgorgonData) {
                    setState(() {
                      _sliderValue = ozgorgonData;
                    });
                  },
                  sliderValueText: _sliderValue.toInt()),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: Row(
                children: [
                  CustomWidget(
                    widget: WeightAgeWidget(
                        minus: () {
                          setState(() {
                            _weight--;
                          });
                        },
                        plus: () {
                          setState(() {
                            _weight++;
                          });
                        },
                        soz: 'weight',
                        ekinchiSoz: _weight.toString()),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  CustomWidget(
                    widget: WeightAgeWidget(
                      minus: (() {
                        setState(() {
                          _age--;
                        });
                      }),
                      plus: (() {
                        setState(() {
                          _age = _age + 1;
                        });
                      }),
                      soz: 'age',
                      ekinchiSoz: _age.toString(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Button_Calculate(
        text: 'Calculate',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => ResultPage(
                    bmiResult: bmiBrain.calculateBrain(_weight, _age),
                  )),
            ),
          );
        },
      ),
    );
  }
}


/// Turnary operator ===>> _maleKnopka == true ? _activeTus  : _inactive
/// if(_maleKnopka == true){
/// _activeTus;
/// }else{
/// _inactive
/// }