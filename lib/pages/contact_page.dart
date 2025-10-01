import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controllers/contact_controller.dart';
import 'package:flutter_application_1/components/input_with_button.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ContactController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Page"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InputWithButton(
              controller: controller.nameController,
              hintText: "Masukkan nama",
              buttonText: "Tambah",
              onPressed: controller.addName,
            ),
          ),

          // List nama dari database
          Expanded(
            child: Obx(() {
              if (controller.names.isEmpty) {
                return const Center(child: Text("Belum ada data."));
              }
              return ListView.builder(
                itemCount: controller.names.length,
                itemBuilder: (context, index) {
                  final name = controller.names[index];
                  return ListTile(
                    title: Text(name),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
