import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/pages/calculator_page.dart';
import 'package:flutter_application_1/pages/football_player_page.dart';
import 'package:flutter_application_1/components/footballplayercontroller.dart';

void main() {
  Get.put(FootballplayerController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true, 
      ),
      home: CalculatorPage(),
      getPages: [
        GetPage(
          name: '/calculator',
          page: () => CalculatorPage(),
        ),
        GetPage(
          name: '/football',
          page: () => FootballPlayerPage(),
        ),
      ],
    );
  }
}
