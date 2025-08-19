import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/calculator_page.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:get/get.dart';



class AppPages {
  static final pages = [ 
    GetPage(name: AppRoutes.calculator, page: ()=> CalculatorPage()),
    GetPage(name: AppRoutes.football, page: ()=> Container())
];

}