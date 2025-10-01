import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/footballplayercontroller.dart';
import '../routes/routes.dart';

class FootballFragment extends StatelessWidget {
  const FootballFragment({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FootballplayerController>();

    return Scaffold(
      appBar: AppBar(title: const Text("FC Bayern München")),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.players.length,
          itemBuilder: (context, index) {
            final player = controller.players[index];
            return ListTile(
              leading: CircleAvatar(child: Text(player.name[0])),
              title: Text(player.name),
              subtitle: Text(player.position),
              trailing: Text("#${player.number}"),
              onTap: () {
                // Kirim data lewat arguments
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
    );
  }
}
