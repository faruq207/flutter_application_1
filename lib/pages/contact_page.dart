import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controllers/contact_controller.dart';
import 'package:flutter_application_1/components/input_with_button.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  void _showEditDialog(
      BuildContext context, ContactController controller, int index, String oldName) {
    final TextEditingController editController =
    TextEditingController(text: oldName);

    Get.defaultDialog(
      title: "Edit Kontak",
      content: Column(
        children: [
          TextField(
            controller: editController,
            decoration: const InputDecoration(labelText: "Nama baru"),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () => Get.back(),
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                  child: const Text("Batal"),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () async {
                    String newName = editController.text.trim();
                    if (newName.isNotEmpty) {
                      await controller.updateName(index, newName);
                      Get.back();
                    }
                  },
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text("Simpan"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ContactController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InputWithButton(
              controller: controller.nameController,
              hintText: "Masukkan nama",
              buttonText: "Tambah",
              onPressed: controller.addName,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Obx(() {
                if (controller.names.isEmpty) {
                  return const Center(child: Text("Belum ada data."));
                }
                return ListView.builder(
                  itemCount: controller.names.length,
                  itemBuilder: (context, index) {
                    final name = controller.names[index];
                    return Card(
                      child: ListTile(
                        title: Text(name),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon:
                              const Icon(Icons.edit, color: Colors.orange),
                              onPressed: () =>
                                  _showEditDialog(context, controller, index, name),
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              onPressed: () => controller.deleteName(index),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
