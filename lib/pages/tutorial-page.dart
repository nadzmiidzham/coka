import 'package:coka/models/Tutorial.dart';
import 'package:coka/providers/tutorial-provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TutorialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorial'),
      ),
      body: Container(
        child: ListView(
          children: _tutorialListWidget(context),
        ),
      ),
    );
  }

  List<Widget> _tutorialListWidget(BuildContext context) {
    List<Tutorial> tutorialList = Provider.of<TutorialProvider>(context, listen: false).tutorialList;
    List<Widget> tempWidgetList = [];

    for(int x=0 ; x<tutorialList.length ; x++) {
      tempWidgetList.add(Consumer<TutorialProvider>(
        builder: (context, provider, child) {
          return CheckboxListTile(
            title: Text(tutorialList[x].title),
            value: tutorialList[x].isComplete,
            onChanged: (bool value) {
              tutorialList[x].isComplete = value;
              provider.updateTutorial(tutorialList[x]);
            },
          );
        },
      ));
    }

    return tempWidgetList;
  }
}
