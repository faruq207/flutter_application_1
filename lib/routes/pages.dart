// ...existing code...
import 'package:get/get.dart';
import 'package:flutter_application_1/pages/splashscreen_page.dart';
// Jika MainPage Anda berada di subfolder 'pages/pages', gunakan import ini:
import 'package:flutter_application_1/pages/pages/main_page.dart';
// Jika MainPage berada langsung di lib/pages, ganti ke:
// import 'package:flutter_application_1/pages/main_page.dart';

import 'package:flutter_application_1/pages/calculator_page.dart';
import 'package:flutter_application_1/pages/football_player_page.dart';
import 'package:flutter_application_1/pages/edit_player_page.dart';
import 'package:flutter_application_1/pages/profil_page.dart';
import 'package:flutter_application_1/pages/contact_page.dart';

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
      name: AppRoutes.contactpage,
      page: () => ContactPage(),
      // binding: ContactBinding(), // aktifkan jika binding tersedia
    ),
    GetPage(
      name: AppRoutes.splashscreen_page,
      page: () => SplashScreenPage(),
      // binding: SplashscreenBindings(), // aktifkan jika binding tersedia
    ),
  ];
}
// ...existing code...