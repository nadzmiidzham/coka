import 'package:coka/models/Story.dart';
import 'package:coka/providers/game-provider.dart';
import 'package:coka/widgets/story-card-widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StoryTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GameProvider gameProvider = Provider.of<GameProvider>(context, listen: false);

    switch(gameProvider.state) {
      case GameState.SETUP:
        return Container(
          child: Center(
            child: _showStoryList(context, gameProvider.storyProvider.storyList),
          ),
        );
        break;
      case GameState.INITIALIZED:
        return Container(
          child: Center(
            child: _showScenarioList(context, gameProvider.storyProvider.selectedStory),
          ),
        );
        break;
      case GameState.STARTED:
        break;
      case GameState.ENDED:
        break;
    }

    return Container(
      child: Center(
        child: _showStoryList(context, gameProvider.storyProvider.storyList),
      ),
    );
  }

  Widget _showStoryList(BuildContext context, List<Story> storyList) {
    List<Widget> storyListWidget = [];

    for(int x=0 ; x<storyList.length ; x++) {
      storyListWidget.add(StoryCardWidget(story: storyList[x], state: StoryCardState.SUMMARY));
    }

    return ListView(
      children: storyListWidget,
    );
  }

  Widget _showScenarioList(BuildContext context, Story selectedStory) {}
}
