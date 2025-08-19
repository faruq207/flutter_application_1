import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/footballplayercontroller.dart';
import 'edit_player_page.dart';

class FootballPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FootballplayerController>();

    return Scaffold(
      appBar: AppBar(title: Text("FC Bayern München")),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.players.length,
          itemBuilder: (context, index) {
            final player = controller.players[index];
            return ListTile(
              leading: CircleAvatar(child: Text(player.name[0])), // sementara tanpa gambar
              title: Text(player.name),
              subtitle: Text(player.position),
              trailing: Text("#${player.number}"),
              onTap: () {
                Get.to(() => EditPlayerPage(index: index, player: player));
              },
            );
          },
        ),
      ),
    );
  }
}
