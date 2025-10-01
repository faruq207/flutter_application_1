import 'package:flutter_application_1/controllers/contact_controller.dart';
import 'package:get/get.dart';

class ContactBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContactController>(() => ContactController());
  }
}
