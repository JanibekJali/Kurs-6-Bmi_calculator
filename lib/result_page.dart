import 'package:bmi_calculator/brain/bmi_brain.dart';
import 'package:bmi_calculator/widgets/button_calculate.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key key, this.bmiResult}) : super(key: key);
  final double bmiResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ден соолук индекси')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 85.0, bottom: 30.0),
              child: Text(
                'Жыйынтык'.toUpperCase(),
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.05,
            // ),
            Container(
              color: Color.fromARGB(255, 43, 40, 40),
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiBrain.getResult(bmiResult),
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    bmiResult.round().toString(),
                    style: TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // color: Colors.,
                  Text(
                    bmiBrain.getInterpretation(bmiResult),
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Button_Calculate(
        text: 'Re-Calculate',
        // onPressed: Navigator.pop(  context)
      ),
    );
  }
}
