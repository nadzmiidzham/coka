enum ScenarioTime{
  MIDNIGHT,
  EARLY_MORNING,
  LATE_MORNING,
  MIDDAY,
  AFTERNOON,
  EVENING
}

class Scenario {
  String title;
  String scenarioImagePath;
  String setupImagePath;
  bool isCompleted;

  // scenario tracker
  int hope;
  int morale;
  ScenarioTime time;

  // scenario stat
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
