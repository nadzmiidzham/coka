import 'package:coka/models/Creature.dart';
import 'package:coka/models/GameTime.dart';
import 'package:coka/models/Player.dart';
import 'package:coka/models/Story.dart';

enum GameState {
  INITIALIZE,
  RUN,
  END
}

class Game {
  GameState state;
  Story story;
  int hope;
  int morale;
  GameTime time;
  int maxPlayer;
  List<Player> playerList;
  List<Creature> creatureList;

  Game({
    this.state,
    this.time,
    this.story,
    this.maxPlayer,
    this.playerList,
    this.creatureList,
    this.hope,
    this.morale
  });
}
