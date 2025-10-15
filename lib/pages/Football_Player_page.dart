import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/footballplayercontroller.dart';
import 'package:get/get.dart';

class FootballPlayerPage extends StatelessWidget {
  FootballPlayerPage({super.key});

  final footballPlayerController = Get.put(FootballplayerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "FC Bayern München",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 3,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double width = constraints.maxWidth;
          bool isMobile = width < 600;
          bool isTablet = width >= 600 && width < 1000;
          bool isDesktop = width >= 1000;

          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Obx(() {
              final players = footballPlayerController.players;

              if (isMobile) {
                // Mobile → ListView
                return ListView.builder(
                  itemCount: players.length,
                  itemBuilder: (context, index) {
                    final player = players[index];
                    return Card(
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ListTile(
                        contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(player.image),
                        ),
                        title: Text(
                          player.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        subtitle: Text(
                          player.position,
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        trailing: Text(
                          "#${player.number}",
                          style: const TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ),
                    );
                  },
                );
              }

              // Tablet/Desktop → GridView
              // Auto responsive crossAxisCount
              int crossAxisCount = 4; // default desktop
              if (isTablet) crossAxisCount = 3;
              if (isDesktop) crossAxisCount = 5;

              double childAspectRatio = 0.7; // kotak agak tinggi → lebih rapi

              return GridView.builder(
                itemCount: players.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: childAspectRatio,
                ),
                itemBuilder: (context, index) {
                  final player = players[index];
                  return Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(12)),
                            child: Image.asset(
                              player.image,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          player.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          player.position,
                          style: TextStyle(color: Colors.grey[700], fontSize: 14),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "#${player.number}",
                          style: const TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  );
                },
              );
            }),
          );
        },
      ),
    );
  }
}
