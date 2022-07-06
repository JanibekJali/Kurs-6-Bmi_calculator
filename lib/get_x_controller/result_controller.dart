import 'package:bmi_calculator/data/repos/bmi_repos.dart';
import 'package:get/get.dart';

import 'main_bmi_controller.dart';

class ResultController extends GetxController {
  final MainBmiController _mainBmiController = Get.find<MainBmiController>();
  RxString title = 'No Title'.obs;
  RxDouble result = 0.0.obs;
  RxString descrition = 'No Description'.obs;
  @override
  void onInit() {
    calculateBrain();
    getResult();
    getInterpretation();
    super.onInit();
  }

  void calculateBrain() {
    result.value = BmiRepos.calculateBrain(
      _mainBmiController.getWeight.value,
      _mainBmiController.getSliderValue.value.toInt(),
    );
  }

  void getResult() {
    title.value = BmiRepos.getResult(result.value);
  }

  void getInterpretation() {
    descrition.value = BmiRepos.getInterpretation(result.value);
  }
}
