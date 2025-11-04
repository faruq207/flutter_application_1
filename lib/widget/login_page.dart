import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';
import '../register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LoginController>(); // dari binding otomatis

    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome to our app",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 10, 136, 164),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Please fill username and password",
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 198, 72, 22),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),

            Center(
              child: Container(
                margin: const EdgeInsets.all(10),
                width: 100,
                child: Image.asset('assets/munchen.png'),
              ),
            ),
            const SizedBox(height: 20),

            // Username Field
            TextField(
              controller: controller.usernameController,
              decoration: const InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),

            // Password Field
            TextField(
              controller: controller.passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Tombol Login
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  controller.login();
                },
                child: const Text("Login"),
              ),
            ),
            const SizedBox(height: 10),

            // Tombol Registrasi
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ),
                  );
                },
                child: const Text("Registrasi"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
