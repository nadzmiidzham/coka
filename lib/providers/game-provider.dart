import 'package:coka/models/Creature.dart';
import 'package:coka/models/Game.dart';
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
        .setStartTime()
        .build();
    this.game.story.state = StoryState.RUN_ROUND;
    notifyListeners();
  }

  endGame() {
    this.game.state = GameState.END;
    notifyListeners();
  }
}
