import 'package:flutter_application_1/controllers/navcontroller.dart';
import 'package:get/get.dart';

class NavBinding extends Bindings{
  @override
  void dependencies() {
     Get.lazyPut<NavController> (()=>NavController());
}

}