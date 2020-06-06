import 'package:coka/models/Scenario.dart';

enum StoryType {
  STORY,
  SCENARIO
}

class Story {
  String title;
  StoryType type;
  List<Scenario> scenarioList;
  String imagepath;

  Story({
    this.title,
    this.type,
    this.scenarioList,
    this.imagepath
  });
}
