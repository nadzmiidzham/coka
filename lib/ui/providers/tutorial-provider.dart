import 'package:coka/core/models/Tutorial.dart';
import 'package:flutter/material.dart';

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
