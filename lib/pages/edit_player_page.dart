import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/edit_player_controller.dart';

class EditPlayerPage extends StatelessWidget {
  EditPlayerPage({super.key});

  final editController = Get.put(EditPlayerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Player")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextField(
            controller: editController.nameController,
            decoration: const InputDecoration(labelText: "Name"),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: editController.positionController,
            decoration: const InputDecoration(labelText: "Position"),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: editController.numberController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: "Number"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              final updatedPlayer = editController.getUpdatedPlayer();
              editController.footballPlayerController.updatePlayer(
                editController.index,
                updatedPlayer,
              );
              Get.back();
            },
            child: const Text("Save"),
          ),
        ],
      ),
    );
  }
}
