import 'package:coka/models/Story.dart';
import 'package:coka/providers/story-provider.dart';
import 'package:coka/widgets/story/scenario-card-widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SetupStoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map parameters = ModalRoute.of(context).settings.arguments as Map;
    Story story = (parameters != null)? parameters['story'] : null;

    return Scaffold(
      appBar: AppBar(title: Text(story.title)),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Center(
          child: ListView(
            children: _showScenarioList(story),
          ),
        ),
      ),
    );
  }
  
  List<Widget> _showScenarioList(Story selectedStory) {
    List<Widget> tempWidgetList = [];

    for(int x=0 ; x<selectedStory.scenarioList.length ; x++) {
      tempWidgetList.add(ScenarioCardWidget(
        storyImagePath: selectedStory.imagePath,
        scenario: selectedStory.scenarioList[x]
      ));
    }
    
    tempWidgetList.add(Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Consumer<StoryProvider>(
        builder: (context, provider, child) {
          return RaisedButton(
            child: Text('Choose Story'),
            onPressed: () {
              provider.setStory(selectedStory);
              Navigator.pop(context);
            },
          );
        },
      ),
    ));
    
    return tempWidgetList;
  }
}
