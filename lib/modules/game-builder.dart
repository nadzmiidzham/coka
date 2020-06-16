import 'package:coka/models/Creature.dart';
import 'package:coka/models/Game.dart';
import 'package:coka/models/GameTime.dart';
import 'package:coka/models/Player.dart';
import 'package:coka/models/Story.dart';

class GameBuilder {
  GameState _state;
  GameTime _time;
  Story _story;
  List<Player> _playerList;
  List<Creature> _creatureList;

  GameBuilder reset() {
    this._state = GameState.INITIALIZE;
    this._time = new GameTime(time: GameTimeState.EARLY_MORNING, description: 'Early Morning');
    this._story = new Story();
    this._playerList = [];
    this._creatureList = [];
    return this;
  }

  GameBuilder setState(GameState state) {
    this._state = state;
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

  GameBuilder setPlayerList(List<Player> playerList) {
    this._playerList = playerList;
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
      time: this._time,
      story: this._story,
      playerList: this._playerList,
      creatureList: this._creatureList
    );
  }
}
