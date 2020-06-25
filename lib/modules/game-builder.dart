import 'package:coka/models/Creature.dart';
import 'package:coka/models/Game.dart';
import 'package:coka/models/GameTime.dart';
import 'package:coka/models/Player.dart';
import 'package:coka/models/Story.dart';

class GameBuilder {
  GameState _state;
  int _hope;
  int _morale;
  GameTime _time;
  Story _story;
  int _maxPlayer;
  List<Player> _playerList;
  List<Creature> _creatureList;

  GameBuilder() {
    this.reset();
  }

  GameBuilder reset() {
    this._state = GameState.INITIALIZE;
    this._hope = 3;
    this._morale = 3;
    this._time = new GameTime(time: GameTimeState.EARLY_MORNING, name: 'Early Morning', description: 'Early Morning');
    this._story = new Story();
    this._maxPlayer = 4;
    this._playerList = [];
    this._creatureList = [];
    return this;
  }

  GameBuilder setState(GameState state) {
    this._state = state;
    return this;
  }

  GameBuilder setStartHope() {
    this._hope = this._story.scenarioList[0].hope;
    return this;
  }

  GameBuilder setStartMorale() {
    this._morale = this._story.scenarioList[0].morale;
    return this;
  }

  GameBuilder setTime(GameTime time) {
    this._time = time;
    return this;
  }

  GameBuilder setStartTime() {
    this._time = this._story.scenarioList[0].time;
    return this;
  }

  GameBuilder setStory(Story story) {
    this._story = story;
    return this;
  }

  GameBuilder setMaxPlayer(int maxPlayer) {
    this._maxPlayer = maxPlayer;
    return this;
  }

  GameBuilder setPlayerList(List<Player> playerList) {
    for(int x=0 ; x<this._maxPlayer ; x++) {
      this._playerList.add(playerList[x]);
    }
    return this;
  }

  GameBuilder setCreatureList(List<Creature> creatureList) {
    this._creatureList = creatureList;
    return this;
  }

  GameBuilder addPlayer(Player player) {
    this._playerList.add(player);
    return this;
  }

  GameBuilder addCreature(Creature creature) {
    this._creatureList.add(creature);
    return this;
  }

  Game build() {
    return Game(
      state: this._state,
      hope: this._hope,
      morale: this._morale,
      time: this._time,
      story: this._story,
      maxPlayer: this._maxPlayer,
      playerList: this._playerList,
      creatureList: this._creatureList
    );
  }
}
