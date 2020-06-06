import 'package:coka/models/Scenario.dart';
import 'package:coka/models/Story.dart';
import 'package:flutter/material.dart';

class StoryProvider extends ChangeNotifier {
  List<Story> storyList;
  Story selectedStory;

  StoryProvider() {
    initStory();
  }

  // init methods
  initStory() {
    storyList = [
      Story(
        title: 'Desecrated',
        type: StoryType.SCENARIO,
        imagepath: 'images/test.jpg',
        scenarioList: [
          Scenario(
              title: 'Desecrated',
              isCompleted: false,
              scenarioImagePath: '',
              setupImagePath: '',
              hope: 3, morale: 3, time: ScenarioTime.EARLY_MORNING,
              xp: 1, stat: 1, skill: 1, equipment: 1, creatureLevel: 1
          )
        ]
      ),
      Story(
          title: 'Scenario 1',
          type: StoryType.SCENARIO,
          imagepath: 'images/test.jpg',
          scenarioList: [
            Scenario(
                title: 'Scenario 1',
                isCompleted: false,
                scenarioImagePath: '',
                setupImagePath: '',
                hope: 3, morale: 3, time: ScenarioTime.EARLY_MORNING,
                xp: 1, stat: 1, skill: 1, equipment: 1, creatureLevel: 1
            )
          ]
      ),
      Story(
          title: 'Scenario 2',
          type: StoryType.SCENARIO,
          imagepath: 'images/test.jpg',
          scenarioList: [
            Scenario(
                title: 'Scenario 2',
                isCompleted: false,
                scenarioImagePath: '',
                setupImagePath: '',
                hope: 3, morale: 3, time: ScenarioTime.EARLY_MORNING,
                xp: 1, stat: 1, skill: 1, equipment: 1, creatureLevel: 1
            )
          ]
      ),
    ];
  }

  // action methods
  selectStory(Story selectedStory) {
    this.selectedStory = selectedStory;
    notifyListeners();
  }
}
