import 'package:flutter_application_1/bindings/contact_bindings.dart';
import 'package:flutter_application_1/pages/contact_page.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/pages/calculator_page.dart';
import 'package:flutter_application_1/pages/football_player_page.dart';
import 'package:flutter_application_1/pages/edit_player_page.dart';
import 'package:flutter_application_1/pages/profil_page.dart';
import 'package:flutter_application_1/pages/pages/main_page.dart';
import 'routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.calculator, page: () => CalculatorPage()),
    GetPage(name: AppRoutes.football, page: () => FootballPlayerPage()),
    GetPage(name: AppRoutes.editPlayer, page: () => EditPlayerPage()), // tanpa parameter
    GetPage(name: AppRoutes.profile, page: () => ProfilePage()),
    GetPage(name: AppRoutes.main, page: () => MainPage()),
    GetPage(name: AppRoutes.contactpage,page: () => const ContactPage(),binding: ContactBinding(), // ✅ penting
),

  ];
}
