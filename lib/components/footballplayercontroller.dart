import 'package:get/get.dart';
import '../model/footbalplayer_model.dart';

class FootballplayerController extends GetxController {
  var players = <FootballPlayer>[
    FootballPlayer(
      name: "Jamal Musiala",
      position: "Midfielder",
      number: 42,
      image: "assets/musiala.png",
    ),
    FootballPlayer(
      name: "Joshua Kimmich",
      position: "Midfielder", 
      number: 6,
      image: "assets/kimmich.png",
    ),
    FootballPlayer(
      name: "Hiroki Ito",
      position: "Defender",
      number: 20,
      image: "assets/ito.png",
    ),
    FootballPlayer(
      name: "Manuel Neuer",
      position: "Goalkeeper",
      number: 1,
      image: "assets/neuer.png",
    ),
    FootballPlayer(
      name: "Kim Min Jae",
      position: "Defender",
      number: 3,
      image: "assets/kim.png",
    ),
  ].obs;

  
  void updatePlayer(int index, FootballPlayer updatedPlayer) {
    players[index] = updatedPlayer;
    players.refresh(); 
  }
}
