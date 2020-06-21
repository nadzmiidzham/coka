import 'package:coka/models/GameTime.dart';

class Scenario {
  String title;
  String scenarioImagePath;
  String setupImagePath;
  bool isCompleted;

  int hope;
  int morale;
  GameTime time;

  int xp;
  int stat;
  int skill;
  int creatureLevel;
  int equipment;

  Scenario({
    this.title,
    this.scenarioImagePath,
    this.setupImagePath,
    this.isCompleted,
    this.hope,
    this.morale,
    this.time,
    this.xp,
    this.stat,
    this.skill,
    this.creatureLevel,
    this.equipment
  });
}
