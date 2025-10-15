import 'package:flutter_application_1/controllers/contact_controller.dart';
import 'package:flutter_application_1/controllers/footballplayercontroller.dart';
import 'package:get/get.dart';

class FootballBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FootballplayerController>(() => FootballplayerController());
  }
}