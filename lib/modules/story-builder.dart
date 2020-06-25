import 'package:coka/models/Scenario.dart';
import 'package:coka/models/Story.dart';

class StoryBuilder {
  String title;
  String imagePath;
  StoryState state;
  List<Scenario> scenarioList;

  StoryBuilder reset() {
    this.title = null;
    this.imagePath = null;
    this.state = StoryState.SETUP;
    this.scenarioList = [];

    return this;
  }

  StoryBuilder setTitle(String title) {
    this.title = title;
    return this;
  }

  StoryBuilder setImagePath(String imagePath) {
    this.imagePath = imagePath;
    return this;
  }

  StoryBuilder setState(StoryState state) {
    this.state = state;
    return this;
  }

  StoryBuilder setScenarioList(List<Scenario> scenarioList) {
    this.scenarioList = scenarioList;
    return this;
  }

  StoryBuilder addScenario(Scenario scenario) {
    this.scenarioList.add(scenario);
    return this;
  }

  Story build() {
    return new Story(
      title: this.title,
      imagePath: this.imagePath,
      state: this.state,
      scenarioList: this.scenarioList
    );
  }
}