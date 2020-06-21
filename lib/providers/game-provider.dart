import 'package:coka/models/Creature.dart';
import 'package:coka/models/Game.dart';
import 'package:coka/models/GameTime.dart';
import 'package:coka/models/Player.dart';
import 'package:coka/models/Scenario.dart';
import 'package:coka/models/Story.dart';
import 'package:coka/modules/game-builder.dart';
import 'package:coka/modules/story-builder.dart';
import 'package:flutter/material.dart';

class GameProvider extends ChangeNotifier {
  GameBuilder _gameBuilder;
  List<Story> storyList;
  Game game;

  GameProvider() {
    initProvider();
    initStory();
  }

  // init method
  initProvider() {
    this._gameBuilder = GameBuilder();

    this.game = this._gameBuilder.reset().build();
    this.game.playerList = [];
  }

  initStory() {
    this.storyList = [
      Story(
          title: 'Desecrated',
          imagePath: 'images/test.jpg',
          state: StoryState.SETUP,
          scenarioList: [
            Scenario(
                title: 'Desecrated',
                isCompleted: false,
                scenarioImagePath: 'images/scenario-front.jpeg',
                setupImagePath: 'images/scenario-back.jpeg',
                hope: 3, morale: 3,
                time: GameTime(time: GameTimeState.EARLY_MORNING, description: 'Early Morning'),
                xp: 1, stat: 1, skill: 1, equipment: 1, creatureLevel: 1
            )
          ]
      ),
      Story(
          title: 'Story 1',
          imagePath: 'images/test.jpg',
          state: StoryState.SETUP,
          scenarioList: [
            Scenario(
                title: 'Chapter 1',
                isCompleted: false,
                scenarioImagePath: 'images/scenario-front.jpeg',
                setupImagePath: 'images/scenario-back.jpeg',
                hope: 3, morale: 3,
                time: GameTime(time: GameTimeState.EARLY_MORNING, description: 'Early Morning'),
                xp: 1, stat: 1, skill: 1, equipment: 1, creatureLevel: 1
            ),
            Scenario(
                title: 'Chapter 2',
                isCompleted: false,
                scenarioImagePath: 'images/scenario-front.jpeg',
                setupImagePath: 'images/scenario-back.jpeg',
                hope: 3, morale: 3,
                time: GameTime(time: GameTimeState.EARLY_MORNING, description: 'Early Morning'),
                xp: 1, stat: 1, skill: 1, equipment: 1, creatureLevel: 1
            )
          ]
      ),
      Story(
          title: 'Story 2',
          imagePath: 'images/test.jpg',
          state: StoryState.SETUP,
          scenarioList: [
            Scenario(
                title: 'Chapter 1',
                isCompleted: false,
                scenarioImagePath: 'images/scenario-front.jpeg',
                setupImagePath: 'images/scenario-back.jpeg',
                hope: 3, morale: 3,
                time: GameTime(time: GameTimeState.EARLY_MORNING, description: 'Early Morning'),
                xp: 1, stat: 1, skill: 1, equipment: 1, creatureLevel: 1
            ),
            Scenario(
                title: 'Chapter 2',
                isCompleted: false,
                scenarioImagePath: 'images/scenario-front.jpeg',
                setupImagePath: 'images/scenario-back.jpeg',
                hope: 3, morale: 3,
                time: GameTime(time: GameTimeState.EARLY_MORNING, description: 'Early Morning'),
                xp: 1, stat: 1, skill: 1, equipment: 1, creatureLevel: 1
            ),
            Scenario(
                title: 'Chapter 3',
                isCompleted: false,
                scenarioImagePath: 'images/scenario-front.jpeg',
                setupImagePath: 'images/scenario-back.jpeg',
                hope: 3, morale: 3,
                time: GameTime(time: GameTimeState.EARLY_MORNING, description: 'Early Morning'),
                xp: 1, stat: 1, skill: 1, equipment: 1, creatureLevel: 1
            )
          ]
      ),
    ];
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
