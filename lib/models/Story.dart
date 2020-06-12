import 'package:coka/models/Scenario.dart';

enum StoryState {
  SETUP,
  INITIALIZED,
  START_ROUND,
  END_ROUND
}

class Story {
  String title;
  String imagePath;
  StoryState state;
  List<Scenario> scenarioList;

  Story({
    this.state,
    this.title,
    this.imagePath,
    this.scenarioList
  });
}
