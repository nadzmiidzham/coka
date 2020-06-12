import 'package:coka/models/Scenario.dart';
import 'package:coka/models/Story.dart';
import 'package:coka/providers/story-provider.dart';
import 'package:coka/widgets/story/scenario-card-widget.dart';
import 'package:coka/widgets/story/story-card-widget.dart';
import 'package:coka/widgets/story/story-progress-card-widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StoryTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Consumer<StoryProvider>(
          builder: (context, provider, child) {
            switch(provider.activeStory.state) {
              case StoryState.SETUP:
                return _showStoryList(provider.storyList);
                break;
              case StoryState.INITIALIZED:
                return _showSelectedStoryScenarioList(provider.activeStory);
                break;
              case StoryState.START_ROUND:
                return _showStoryProgress(provider.activeStory);
                break;
              case StoryState.END_ROUND:
                return _showStoryReport();
                break;
            }

            return _showStoryList(provider.storyList);
          },
        ),
      ),
    );
  }

  Widget _showStoryList(List<Story> storyList) {
    List<Widget> storyListWidget = [];

    for(int x=0 ; x<storyList.length ; x++) {
      storyListWidget.add(Consumer<StoryProvider>(
        builder: (context, provider, child) {
          return StoryCardWidget(
            story: storyList[x],
            callback: () {
              Navigator.pushNamed(context, '/setup-story', arguments: { 'story': storyList[x] });
            },
          );
        },
      ));
    }

    return ListView(
      children: storyListWidget,
    );
  }

  Widget _showSelectedStoryScenarioList(Story selectedStory) {
    List<Widget> tempWidgetList = [];

    for(int x=0 ; x<selectedStory.scenarioList.length ; x++) {
      tempWidgetList.add(Selector<StoryProvider, List<Scenario>>(
        selector: (context, provider) => provider.activeStory.scenarioList,
        builder: (context, scenarioList, child) {
          return ScenarioCardWidget(
              storyImagePath: selectedStory.imagePath,
              scenario: scenarioList[x]
          );
        },
      ));
    }

    tempWidgetList.add(Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Consumer<StoryProvider>(
        builder: (context, provider, child) {
          return RaisedButton(
            child: Text('Choose Another Story'),
            onPressed: () {
              provider.cancelStory();
            },
          );
        },
      ),
    ));

    tempWidgetList.add(Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: RaisedButton(
        child: Text('Start Game'),
        onPressed: () {},
      ),
    ));

    return ListView(
      children: tempWidgetList,
    );
  }

  Widget _showStoryProgress(Story story) {
    List<Widget> tempWidgetList = [];

    tempWidgetList.add(StoryProgressCardWidget());

    for(int x=0 ; x<story.scenarioList.length ; x++) {
      tempWidgetList.add(Selector<StoryProvider, Story>(
        selector: (context, provider) => provider.activeStory,
        builder: (context, story, child) {
          return ScenarioCardWidget(
              storyImagePath: story.imagePath,
              scenario: story.scenarioList[x]
          );
        },
      ));
    }

    tempWidgetList.add(Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      child: Consumer<StoryProvider>(
        builder: (context, provider, child) {
          return RaisedButton(
            child: Text('END GAME'),
            onPressed: () {},
          );
        },
      ),
    ));

    return ListView(
      children: tempWidgetList,
    );
  }

  Widget _showStoryReport() {
    return SizedBox.shrink();
  }
}
