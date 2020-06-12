import 'package:coka/models/Scenario.dart';
import 'package:coka/models/Story.dart';
import 'package:coka/modules/story-builder.dart';
import 'package:flutter/material.dart';

class StoryProvider extends ChangeNotifier {
  List<Story> storyList;
  Story activeStory;
  Scenario activeScenario;

  StoryBuilder _storyBuilder;

  StoryProvider() {
    setupStory();
  }

  // init methods
  setupStory() {
    this._storyBuilder = StoryBuilder();
    this.activeStory = this._storyBuilder.reset()
        .build();

    storyList = [
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
              hope: 3, morale: 3, time: ScenarioTime.EARLY_MORNING,
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
                hope: 3, morale: 3, time: ScenarioTime.EARLY_MORNING,
                xp: 1, stat: 1, skill: 1, equipment: 1, creatureLevel: 1
            ),
            Scenario(
                title: 'Chapter 2',
                isCompleted: false,
                scenarioImagePath: 'images/scenario-front.jpeg',
                setupImagePath: 'images/scenario-back.jpeg',
                hope: 3, morale: 3, time: ScenarioTime.EARLY_MORNING,
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
                hope: 3, morale: 3, time: ScenarioTime.EARLY_MORNING,
                xp: 1, stat: 1, skill: 1, equipment: 1, creatureLevel: 1
            ),
            Scenario(
                title: 'Chapter 2',
                isCompleted: false,
                scenarioImagePath: 'images/scenario-front.jpeg',
                setupImagePath: 'images/scenario-back.jpeg',
                hope: 3, morale: 3, time: ScenarioTime.EARLY_MORNING,
                xp: 1, stat: 1, skill: 1, equipment: 1, creatureLevel: 1
            ),
            Scenario(
                title: 'Chapter 3',
                isCompleted: false,
                scenarioImagePath: 'images/scenario-front.jpeg',
                setupImagePath: 'images/scenario-back.jpeg',
                hope: 3, morale: 3, time: ScenarioTime.EARLY_MORNING,
                xp: 1, stat: 1, skill: 1, equipment: 1, creatureLevel: 1
            )
          ]
      ),
    ];
  }

  selectStory(Story story) {
    this.activeStory = this._storyBuilder.reset()
        .setTitle(story.title)
        .setImagePath(story.imagePath)
        .setScenarioList(story.scenarioList)
        .setState(StoryState.INITIALIZED)
        .build();
    this.activeScenario = this.activeStory.scenarioList[0];
    notifyListeners();
  }

  cancelStory() {
    this.activeStory = this._storyBuilder.reset()
        .build();
    notifyListeners();
  }
}
