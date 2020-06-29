import 'package:coka/models/Creature.dart';
import 'package:coka/models/Game.dart';
import 'package:coka/models/GameTime.dart';
import 'package:coka/models/Player.dart';
import 'package:coka/models/Story.dart';
import 'package:coka/modules/game-builder.dart';
import 'package:flutter/material.dart';

class GameProvider extends ChangeNotifier {
  GameBuilder _gameBuilder;
  Game game;

  GameProvider() {
    initProvider();
  }

  List<GameTime> get gameTimeList {
    return [
      GameTime(time: GameTimeState.LATE_MORNING, name: 'Late Morning', description: 'Late Morning'),
      GameTime(time: GameTimeState.MIDDAY, name: 'Midday', description: 'Midday'),
      GameTime(time: GameTimeState.AFTERNOON, name: 'Afternoon', description: 'Afternoon'),
      GameTime(time: GameTimeState.EVENING, name: 'Evening', description: 'Evening'),
      GameTime(time: GameTimeState.MIDNIGHT, name: 'Midnight', description: 'Midnight'),
      GameTime(time: GameTimeState.EARLY_MORNING, name: 'Early Morning', description: 'Early Morning'),
    ];
  }

  // init method
  initProvider() {
    this._gameBuilder = GameBuilder();

    this.game = this._gameBuilder.reset().build();
    this.game.playerList = [];
  }

  // player methods
  addPlayer(Player player) {
    this.game = this._gameBuilder.addPlayer(player).build();
    notifyListeners();
  }

  // creature methods
  addCreature(Creature creature) {
    this._gameBuilder.addCreature(creature);
    notifyListeners();
  }

  // game methods
  startGame(Story story) {
    this.game = this._gameBuilder
        .setState(GameState.RUN)
        .setStory(story)
        .setStartHope()
        .setStartMorale()
        .setStartTime()
        .build();
    this.game.story.state = StoryState.RUN_ROUND;
    notifyListeners();
  }

  endGame() {
    this.game = this._gameBuilder.setState(GameState.END).build();
    notifyListeners();
  }

  resetGame() {
    this.game = this._gameBuilder.reset().build();
    notifyListeners();
  }
}
