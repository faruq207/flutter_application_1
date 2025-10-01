import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/navcontroller.dart';
import 'package:get/get.dart';
import 'Calculator.dart';
import 'Football_Player_page.dart';
import 'Profil_page.dart';

class NavPage extends StatelessWidget {
  NavPage({super.key});

   final navController = Get.find<NavController>();


  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: navController.pages[navController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: navController.selectedIndex.value,
          onTap: navController.changePage,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: "Calculator",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer),
              label: "Football",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),     
        ),
);
}
}