import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/pages/main_page.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/components/footballplayercontroller.dart';


void main() {
  Get.put(FootballplayerController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: MainPage(), // 🔥 langsung ke Bottom Nav
    );
  }
}
