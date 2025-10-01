import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/components/main_menu_controller.dart';
import 'package:flutter_application_1/fragments/home_fragment.dart';
import 'package:flutter_application_1/fragments/football_fragment.dart';
import 'package:flutter_application_1/fragments/profil_fragment.dart';

class MainPage extends StatelessWidget {
  final BottomNavController controller = Get.put(BottomNavController());

  final pages = const [
    HomeFragment(),
    FootballFragment(),
    ProfilFragment(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: pages[controller.selectedIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            onTap: controller.changePage,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.calculate),
                label: "Calculator",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sports_soccer),
                label: "Football",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        ));
  }
}
