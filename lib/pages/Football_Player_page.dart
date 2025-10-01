import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/footballplayercontroller.dart';
import 'package:get/get.dart';
import '../routes/routes.dart'; // <-- import file routes

class FootballPlayerPage extends StatelessWidget {
  FootballPlayerPage({super.key});

  // Sama kayak kode pertama, pakai Get.put untuk inisialisasi controller
  final FootballplayerController footballPlayerController = Get.put(FootballplayerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FC Bayern München")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: footballPlayerController.players.length,
            itemBuilder: (context, index) {
              final player = footballPlayerController.players[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(player.image),
                ),
                title: Text(player.name),
                subtitle: Text(player.position),
                trailing: Text("#${player.number}"),
                onTap: () {
                  print("player clicked: ${player.name}");
                  // Sama persis: pindah halaman pakai Get.toNamed
                  Get.toNamed(
                    AppRoutes.editPlayer,
                    arguments: {
                      "index": index,
                      "player": player,
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
