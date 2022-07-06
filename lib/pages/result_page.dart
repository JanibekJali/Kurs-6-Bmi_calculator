import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../get_x_controller/result_controller.dart';
import '../widgets/button_calculate.dart';

class ResultPage extends StatelessWidget {
  final ResultController resultController = Get.put(ResultController());

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
                  Obx(() => Text(
                        resultController.title.value,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      )),
                  Obx(() => Text(
                        resultController.result.value.toStringAsFixed(1),
                        style: TextStyle(
                          fontSize: 100.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  // color: Colors.,
                  Obx(() => Text(
                        resultController.descrition.value,
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Button_Calculate(
        text: 'Re-Calculate',
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
