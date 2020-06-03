import 'package:coka/models/Tutorial.dart';
import 'package:flutter/cupertino.dart';

class TutorialProvider extends ChangeNotifier {
  List<Tutorial> tutorialList;

  TutorialProvider() {
    initTutorials();
  }

  // init method
  initTutorials() {
    tutorialList = [
      Tutorial(title: 'Tutorial 1', isComplete: false),
      Tutorial(title: 'Tutorial 2', isComplete: false),
    ];
  }

  // action method
  updateTutorial(Tutorial tutorial) {
    int index = tutorialList.indexOf(tutorial);

    tutorialList[index] = tutorial;
    notifyListeners();
  }
}
