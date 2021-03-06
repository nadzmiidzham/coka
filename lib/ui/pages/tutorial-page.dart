import 'package:coka/core/models/Tutorial.dart';
import 'package:coka/ui/providers/tutorial-provider.dart';
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
          return ListTile(
            leading: Checkbox(
              value: tutorialList[x].isComplete,
              onChanged: (bool value) {
                // manually complete tutorial
                tutorialList[x].isComplete = value;
                provider.updateTutorial(tutorialList[x]);

                if(tutorialList[x].isComplete) {
                  // show completed message
                  Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text('Finished ${tutorialList[x].title}'),
                      duration: Duration(seconds: 1)
                  ));
                }
              },
            ),
            title: Text(tutorialList[x].title),
            onTap: () {
              if(tutorialList[x].isComplete) {
                return;
              }

              // complete selected tutorial
              tutorialList[x].isComplete = true;
              provider.updateTutorial(tutorialList[x]);

              // show completed message
              Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('Finished ${tutorialList[x].title}'),
                  duration: Duration(seconds: 1)
              ));
            },
          );
        },
      ));
    }

    return tempWidgetList;
  }
}
