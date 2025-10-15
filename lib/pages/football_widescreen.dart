import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controllers/footballplayercontroller.dart';

class FootballPlayerWidescreen extends StatelessWidget {
  FootballPlayerWidescreen({super.key});

  final controller = Get.put(FootballplayerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "FC Bayern",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 3,
      ),
      body: Obx(() {
        final players = controller.players;

        return LayoutBuilder(
          builder: (context, constraints) {
            // Hitung lebar maksimal card
            double maxWidth = constraints.maxWidth;
            int crossAxisCount = (maxWidth / 220).floor(); // minimal lebar 220
            crossAxisCount = crossAxisCount > 0 ? crossAxisCount : 1;
            double childWidth = maxWidth / crossAxisCount;
            double childHeight = childWidth * 1.2; // proporsional

            return GridView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: players.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: childWidth / childHeight,
              ),
              itemBuilder: (context, index) {
                final player = players[index];

                return MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 7,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(16)),
                            child: Image.asset(
                              player.image,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  player.name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  player.position,
                                  style: TextStyle(
                                      color: Colors.grey[700], fontSize: 14),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "#${player.number}",
                                  style: const TextStyle(
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      }),
    );
  }
}
