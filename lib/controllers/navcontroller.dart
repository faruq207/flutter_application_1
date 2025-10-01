import 'package:flutter_application_1/pages/Football_Player_page.dart';
import 'package:flutter_application_1/pages/Profil_page.dart';
import 'package:flutter_application_1/pages/calculator_page.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class NavController extends GetxController {
  var selectedIndex = 0.obs; 

  
  final List<Widget> pages = [
    CalculatorPage(),
    FootballPlayerPage(),
    ProfilePage()];

  void changePage(int index) {
    selectedIndex.value = index;
}
}