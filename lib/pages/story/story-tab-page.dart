import 'package:coka/models/Game.dart';
import 'package:coka/models/Story.dart';
import 'package:coka/providers/game-provider.dart';
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
        child: Consumer2<GameProvider, StoryProvider>(
          builder: (context, gameProvider, storyProvider, child) {
            if(gameProvider.game.state == GameState.INITIALIZE) {
              switch(storyProvider.story.state) {
                case StoryState.SETUP:
                  return _showStoryList(context, storyProvider.storyList);
                  break;
                case StoryState.INITIALIZED:
                  return _showSelectedStoryScenarioList(gameProvider, storyProvider);
                  break;
                default:
                  return _showStoryList(context, storyProvider.storyList);
                  break;
              }
            }

            if(gameProvider.game.state == GameState.RUN) {
              switch(gameProvider.game.story.state) {
                case StoryState.RUN_ROUND:
                  return _showStoryProgress(gameProvider);
                  break;
                case StoryState.END_ROUND:
                  return _showStoryEndTurn();
                  break;
                default:
                  return _showStoryList(context, storyProvider.storyList);
                  break;
              }
            }

            if(gameProvider.game.state == GameState.END) {
              return _showStoryReport(gameProvider, storyProvider);
            }

            return _showStoryList(context, storyProvider.storyList);
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

  Widget _showSelectedStoryScenarioList(GameProvider gameProvider, StoryProvider storyProvider) {
    Story selectedStory = storyProvider.story;
    List<Widget> tempWidgetList = [];

    for(int x=0 ; x<selectedStory.scenarioList.length ; x++) {
      tempWidgetList.add(ScenarioCardWidget(
          storyImagePath: selectedStory.imagePath,
          scenario: selectedStory.scenarioList[x]
      ));
    }

    tempWidgetList.add(Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: RaisedButton(
        child: Text('Choose Another Story'),
        onPressed: () {
          storyProvider.resetStory();
        },
      ),
    ));

    tempWidgetList.add(Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: RaisedButton(
        child: Text('Start Game'),
        onPressed: (gameProvider.game.playerList.length <= 1)? null : () {
          gameProvider.startGame(storyProvider.story);
        },
      ),
    ));

    return ListView(
      children: tempWidgetList,
    );
  }

  Widget _showStoryProgress(GameProvider provider) {
    Game game = provider.game;
    List<Widget> tempWidgetList = [];

    tempWidgetList.add(StoryProgressCardWidget(
      game: game,
      timeList: provider.gameTimeList,
    ));

    for(int x=0 ; x<game.story.scenarioList.length ; x++) {
      tempWidgetList.add(ScenarioCardWidget(
          storyImagePath: game.story.imagePath,
          scenario: game.story.scenarioList[x]
      ));
    }

    tempWidgetList.add(Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      child: RaisedButton(
        child: Text('END GAME'),
        onPressed: () {
          provider.endGame();
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

  Widget _showStoryReport(GameProvider gameProvider, StoryProvider storyProvider) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: <Widget>[
          Card(child: Text('You Win')),
          RaisedButton(
            child: Text('Continue'),
            onPressed: () {
              storyProvider.resetStory();
              gameProvider.resetGame();
            },
          )
        ],
      ),
    );
  }
}
