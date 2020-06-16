import 'package:coka/models/Creature.dart';
import 'package:coka/models/Game.dart';
import 'package:coka/models/GameTime.dart';
import 'package:coka/models/Player.dart';
import 'package:coka/models/Scenario.dart';
import 'package:coka/models/Story.dart';
import 'package:coka/modules/game-builder.dart';
import 'package:coka/modules/player-builder.dart';
import 'package:coka/modules/story-builder.dart';
import 'package:flutter/material.dart';

class GameProvider extends ChangeNotifier {
  GameBuilder _gameBuilder;
  StoryBuilder _storyBuilder;
  PlayerBuilder _playerBuilder;
  List<Story> storyList;
  Game game;

  GameProvider() {
    initProvider();
    initStory();
  }

  // init method
  initProvider() {
    this._gameBuilder = GameBuilder();
    this._storyBuilder = StoryBuilder();
    this._playerBuilder = PlayerBuilder();

    this.game = this._gameBuilder.reset().build();
    this.game.story = this._storyBuilder.reset().build();
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

  // story methods
  setStory(Story story) {
    Story selectedStory = this._storyBuilder.reset()
        .setTitle(story.title)
        .setImagePath(story.imagePath)
        .setScenarioList(story.scenarioList)
        .setState(StoryState.INITIALIZED)
        .build();

    this.game = this._gameBuilder.setStory(selectedStory).build();
    notifyListeners();
  }

  cancelStory() {
    this.game.story = this._storyBuilder.reset().build();
    notifyListeners();
  }

  // player methods
  randomizePlayer(String name, String imagePath, String description) {
    // TODO: find a way on how to randomize player
    return this._playerBuilder.reset()
        .setName(name)
        .setImagePath(imagePath)
        .setDescription(description)
        .setColor(PlayerColor.GREEN)
        .setAbilityList([])
        .build();
  }

  selectPlayer(Player player) {
    this._playerBuilder.reset()
        .setName(player.name)
        .setImagePath(player.imagePath)
        .setDescription(player.description)
        .setColor(player.color)
        .setAbilityList(player.abilityList)
        .setWorkerList(player.workerList)
        .setWorkerAbilityList(player.workerAbilityList)
        .save();
    notifyListeners();
  }

  // creature methods
  addCreature(Creature creature) {
    this._gameBuilder.addCreature(creature);
    notifyListeners();
  }

  // game methods
  startGame() {
    this.game = this._gameBuilder
        .setState(GameState.RUN)
        .setStartTime()
        .setPlayerList(this._playerBuilder.buildList())
        .build();
    notifyListeners();
  }

  startRound() {
    this.game.story.state = StoryState.RUN_ROUND;
    notifyListeners();
  }

  endGame() {
    this.game.state = GameState.END;
    notifyListeners();
  }
}
