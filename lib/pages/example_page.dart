import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/example_controller.dart';
import 'package:flutter_application_1/example_feature/example_mobile.dart';
import 'package:flutter_application_1/example_feature/example_widescreen.dart';
import 'package:get/get.dart';

class ExamplePage extends StatelessWidget {
  ExamplePage({super.key});

  final controller = Get.find<ExampleController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (context, constraints){
            controller.updateLayout(constraints);
            return Obx(()=> controller.isMobile.value ? ExampleMobile() : ExampleWidescreen());
          }
      ),
    );
  }
}