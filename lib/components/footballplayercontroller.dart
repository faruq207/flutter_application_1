import 'package:get/get.dart';
import '../model/footbalplayer_model.dart';

class FootballplayerController extends GetxController {
  var players = <FootballPlayer>[
    FootballPlayer(
      name: "Jamal Musiala",
      position: "Midfielder",
      number: 42,
      image: "assets/jamal.jpg",
    ),
    FootballPlayer(
      name: "Joshua Kimmich",
      position: "Midfielder", 
      number: 6,
      image: "assets/kimich.jpg",
    ),
    FootballPlayer(
      name: "paruq",
      position: "head coach",
      number: 20,
      image: "assets/hiroki.jpg",
    ),
    FootballPlayer(
      name: "Manuel Neuer",
      position: "Goalkeeper",
      number: 1,
      image: "assets/manuel_neuer.jpg",
    ),
    FootballPlayer(
      name: "Kim Min Jae",
      position: "Defender",
      number: 3,
      image: "assets/kim.jpg",
    ),
  ].obs;

  
  void updatePlayer(int index, FootballPlayer updatedPlayer) {
    players[index] = updatedPlayer;
    players.refresh(); 
  }
}
