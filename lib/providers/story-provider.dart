import 'package:coka/models/GameTime.dart';
import 'package:coka/models/Scenario.dart';
import 'package:coka/models/Story.dart';
import 'package:coka/modules/story-builder.dart';
import 'package:flutter/material.dart';

class StoryProvider extends ChangeNotifier {
  StoryBuilder _storyBuilder;

  StoryProvider() {
    this._storyBuilder = StoryBuilder();
  }

  Story get story { return this._storyBuilder.build(); }

  List<Story> get storyList {
    return [
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
            time: GameTime(time: GameTimeState.EARLY_MORNING, name: 'Early Morning', description: 'Early Morning'),
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
            time: GameTime(time: GameTimeState.EARLY_MORNING, name: 'Early Morning', description: 'Early Morning'),
            xp: 1, stat: 1, skill: 1, equipment: 1, creatureLevel: 1
          ),
          Scenario(
            title: 'Chapter 2',
            isCompleted: false,
            scenarioImagePath: 'images/scenario-front.jpeg',
            setupImagePath: 'images/scenario-back.jpeg',
            hope: 3, morale: 3,
            time: GameTime(time: GameTimeState.EARLY_MORNING, name: 'Early Morning', description: 'Early Morning'),
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
            time: GameTime(time: GameTimeState.EARLY_MORNING, name: 'Early Morning', description: 'Early Morning'),
            xp: 1, stat: 1, skill: 1, equipment: 1, creatureLevel: 1
          ),
          Scenario(
            title: 'Chapter 2',
            isCompleted: false,
            scenarioImagePath: 'images/scenario-front.jpeg',
            setupImagePath: 'images/scenario-back.jpeg',
            hope: 3, morale: 3,
            time: GameTime(time: GameTimeState.EARLY_MORNING, name: 'Early Morning', description: 'Early Morning'),
            xp: 1, stat: 1, skill: 1, equipment: 1, creatureLevel: 1
          ),
          Scenario(
            title: 'Chapter 3',
            isCompleted: false,
            scenarioImagePath: 'images/scenario-front.jpeg',
            setupImagePath: 'images/scenario-back.jpeg',
            hope: 3, morale: 3,
            time: GameTime(time: GameTimeState.EARLY_MORNING, name: 'Early Morning', description: 'Early Morning'),
            xp: 1, stat: 1, skill: 1, equipment: 1, creatureLevel: 1
          )
        ]
      ),
    ];
  }

  setStory(Story story) {
    this._storyBuilder.reset()
        .setState(StoryState.INITIALIZED)
        .setTitle(story.title)
        .setImagePath(story.imagePath)
        .setScenarioList(story.scenarioList);
    notifyListeners();
  }

  cancelStory() {
    this._storyBuilder.reset();
    notifyListeners();
  }
}
