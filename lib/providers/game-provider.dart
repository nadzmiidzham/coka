import 'package:coka/providers/creature-provider.dart';
import 'package:coka/providers/player-provider.dart';
import 'package:coka/providers/story-provider.dart';
import 'package:flutter/material.dart';

enum GameState {
  SETUP,
  INITIALIZED,
  STARTED,
  ENDED
}

class GameProvider extends ChangeNotifier {
  PlayerProvider playerProvider;
  CreatureProvider creatureProvider;
  StoryProvider storyProvider;
  GameState state;

  GameProvider({
    this.playerProvider,
    this.creatureProvider,
    this.storyProvider
  });

  // init methods
  initGame() {
    this.state = GameState.SETUP;
  }

  // action method
  changeGameState(GameState state) {
    this.state = state;
    notifyListeners();
  }
}
