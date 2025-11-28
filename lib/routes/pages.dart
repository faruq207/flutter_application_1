import 'package:get/get.dart';
import 'package:flutter_application_1/pages/splashscreen_page.dart';
import 'package:flutter_application_1/pages/pages/main_page.dart';
import 'package:flutter_application_1/pages/calculator_page.dart';
import 'package:flutter_application_1/pages/football_player_page.dart';
import 'package:flutter_application_1/pages/edit_player_page.dart';
import 'package:flutter_application_1/pages/profil_page.dart';
import 'package:flutter_application_1/pages/contact_page.dart';
import 'package:flutter_application_1/pages/nav_page.dart'; // ✅ Tambahkan ini
import 'routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.calculator,
      page: () => CalculatorPage(),
    ),
    GetPage(
      name: AppRoutes.football,
      page: () => FootballPlayerPage(),
    ),
    GetPage(
      name: AppRoutes.editPlayer,
      page: () => EditPlayerPage(),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => ProfilePage(),
    ),
    GetPage(
      name: AppRoutes.main,
      page: () => MainPage(),
    ),
    GetPage(
      name: AppRoutes.contact_page,
      page: () => ContactPage(),
    ),
    GetPage(
      name: AppRoutes.splashscreen_page,
      page: () => SplashScreenPage(),
    ),
    GetPage(
      name: AppRoutes.navpage,
      page: () => NavPage(), // ✅ Tambahkan ini
    ),
  ];
}
