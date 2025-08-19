import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/footballplayercontroller.dart';
import '../model/footbalplayer_model.dart';

class EditPlayerPage extends StatefulWidget {
  final int index;
  final FootballPlayer player;

  const EditPlayerPage({
    super.key,
    required this.index,
    required this.player,
  });

  @override
  State<EditPlayerPage> createState() => _EditPlayerPageState();
}

class _EditPlayerPageState extends State<EditPlayerPage> {
  late TextEditingController nameController;
  late TextEditingController positionController;
  late TextEditingController numberController;

  final controller = Get.find<FootballplayerController>();

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.player.name);
    positionController = TextEditingController(text: widget.player.position);
    numberController =
        TextEditingController(text: widget.player.number.toString());
  }

  @override
  void dispose() {
    nameController.dispose();
    positionController.dispose();
    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Player")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(labelText: "Name"),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: positionController,
            decoration: const InputDecoration(labelText: "Position"),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: numberController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: "Number"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              final updated = FootballPlayer(
                name: nameController.text,
                position: positionController.text,
                number: int.tryParse(numberController.text) ??
                    widget.player.number,
                image: widget.player.image,
              );
              controller.updatePlayer(widget.index, updated);
              Get.back(); // kembali ke list
            },
            child: const Text("Save"),
          ),
        ],
      ),
    );
  }
}
