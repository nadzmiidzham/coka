enum GameTimeState {
  MIDNIGHT,
  EARLY_MORNING,
  LATE_MORNING,
  MIDDAY,
  AFTERNOON,
  EVENING
}

class GameTime {
  GameTimeState time;
  String name;
  String description;

  GameTime({
    this.time,
    this.name,
    this.description
  });
}
