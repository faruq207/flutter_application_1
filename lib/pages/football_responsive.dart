import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Football_Player_page.dart';
import 'package:flutter_application_1/pages/football_widescreen.dart';
import 'package:flutter_application_1/pages/responsive_controller.dart';
import 'package:get/get.dart';

class FootballResponsive extends StatelessWidget {
  FootballResponsive({super.key});

  final controller = Get.find<ResponsiveController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          controller.updateLayout(constraints);
          return Obx(() => controller.isMobile.value
              ? FootballPlayerPage()
              : FootballPlayerWidescreen());
        },
      ),
    );
  }
}