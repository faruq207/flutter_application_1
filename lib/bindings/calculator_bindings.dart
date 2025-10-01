import 'package:flutter_application_1/components/calculator_controller.dart';
import 'package:get/get.dart';

class calculator_binding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<CalculatorController> (()=>CalculatorController());
  }

}