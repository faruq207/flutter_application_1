import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/routes.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    _goToNext();
  }

  void _goToNext() async {
    // Tunggu 3 detik, lalu pindah ke halaman login
    await Future.delayed(const Duration(seconds: 3));

    // Setelah splashscreen, navigasi ke login page
    Get.offAllNamed(AppRoutes.loginpage); 
    // Pastikan AppRoutes.loginpage sudah kamu buat di routes.dart
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo / gambar
            Image.asset(
              'assets/munchen.png',
              width: 150,
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to MyApp',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
