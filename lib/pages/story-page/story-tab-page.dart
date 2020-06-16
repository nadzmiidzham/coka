import 'package:coka/models/Game.dart';
import 'package:coka/models/Scenario.dart';
import 'package:coka/models/Story.dart';
import 'package:coka/providers/game-provider.dart';
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
        child: Consumer<GameProvider>(
          builder: (context, provider, child) {
            if(provider.game.state == GameState.END) {
              return _showStoryReport();
            }

            switch(provider.game.story.state) {
              case StoryState.SETUP:
                return _showStoryList(context, provider.storyList);
                break;
              case StoryState.INITIALIZED:
                return _showSelectedStoryScenarioList(provider.game.story);
                break;
              case StoryState.RUN_ROUND:
                return _showStoryProgress(provider.game.story);
                break;
              case StoryState.END_ROUND:
                return _showStoryEndTurn();
                break;
              default:
                return _showStoryList(context, provider.storyList);
                break;
            }
          },
        ),
      ),
    );
  }

  Widget _showStoryList(BuildContext context, List<Story> storyList) {
    List<Widget> storyListWidget = [];

    for(int x=0 ; x<storyList.length ; x++) {
      storyListWidget.add(StoryCardWidget(
        story: storyList[x],
        callback: () {
          Navigator.pushNamed(context, '/setup-story', arguments: { 'story': storyList[x] });
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
      tempWidgetList.add(ScenarioCardWidget(
          storyImagePath: selectedStory.imagePath,
          scenario: selectedStory.scenarioList[x]
      ));
    }

    tempWidgetList.add(Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Consumer<GameProvider>(
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
      child: Consumer<GameProvider>(
        builder: (context, provider, child) {
          return RaisedButton(
            child: Text('Start Game'),
            onPressed: () {
              provider.startGame();
              provider.startRound();
            },
          );
        },
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
      tempWidgetList.add(Selector<GameProvider, Story>(
        selector: (context, provider) => provider.game.story,
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
      child: Consumer<GameProvider>(
        builder: (context, provider, child) {
          return RaisedButton(
            child: Text('END GAME'),
            onPressed: () {
              provider.endGame();
            },
          );
        },
      ),
    ));

    return ListView(
      children: tempWidgetList,
    );
  }

  Widget _showStoryEndTurn() {
    return SizedBox.shrink();
  }

  Widget _showStoryReport() {
    return SizedBox.shrink();
  }
}