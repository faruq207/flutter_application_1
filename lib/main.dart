import 'package:flutter/material.dart';
import 'package:flutter_application_1/bindings/football_bindings.dart';
import 'package:get/get.dart';
import 'routes/pages.dart';
import 'routes/routes.dart';

void main() {
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
<<<<<<< HEAD
      initialRoute: AppRoutes.main, // ✅ arahkan ke ContactPage
=======
      initialRoute: AppRoutes.splashscreen_page,
>>>>>>> 5c41d10 (nyimpan perubahan biar gak ilang)
      getPages: AppPages.pages,
      initialBinding: FootballBindings(), // register global controllers
    );
  }
}
