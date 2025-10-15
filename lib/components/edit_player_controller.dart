import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/footballplayercontroller.dart';
import 'package:get/get.dart';
import '../model/footbalplayer_model.dart';

class EditPlayerController extends GetxController {
  late int index;
  late FootballPlayer player;
  late FootballplayerController footballPlayerController;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController positionController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  @override
  void onInit() {
    super.onInit();

    // Ambil argument dari Get.toNamed
    final args = Get.arguments as Map<String, dynamic>;
    index = args["index"];
    player = args["player"];
    footballPlayerController = Get.find<FootballplayerController>();

    // Isi TextField dengan data awal
    nameController.text = player.name;
    positionController.text = player.position;
    numberController.text = player.number.toString();

    print("selected index edit: $index");
    print("selected player name: ${player.name}");
  }

  // Ambil data player yang sudah diedit
  FootballPlayer getUpdatedPlayer() {
    return FootballPlayer(
      name: nameController.text,
      position: positionController.text,
      number: int.tryParse(numberController.text) ?? player.number,
      image: player.image, // gambar tetap sama
    );
  }

  @override
  void onClose() {
    nameController.dispose();
    positionController.dispose();
    numberController.dispose();
    super.onClose();
  }
}
