import 'package:coka/models/Ability.dart';
import 'package:coka/models/Player.dart';
import 'package:coka/models/StatusImpairment.dart';
import 'package:coka/models/Worker.dart';

class PlayerBuilder {
  String _name;
  String _imagePath;
  int _level;
  int _maxHp, _curHp;
  String _description;
  List<Ability> _abilityList;
  List<Ability> _workerAbilityList;
  List<StatusImpairment> _statusImpairmentList;
  List<Worker> _workerList;
  List<Player> _playerList;

  PlayerBuilder() {
    this.reset();
    this.resetList();
  }

  PlayerBuilder reset() {
    this._name = '';
    this._imagePath = '';
    this._level = 1;
    this._curHp = 5;
    this._maxHp = 5;
    this._description = '';
    this._abilityList = [];
    this._workerList = [];
    this._workerAbilityList = [];
    this._statusImpairmentList = [];

    return this;
  }

  PlayerBuilder resetList() {
    this._playerList = [];
    return this;
  }

  PlayerBuilder setName(String name) {
    this._name = name;
    return this;
  }

  PlayerBuilder setImagePath(String imagePath) {
    this._imagePath = imagePath;
    return this;
  }

  PlayerBuilder setLevel(int level) {
    this._level = level;
    return this;
  }

  PlayerBuilder setMaxHP(int maxHP) {
    this._maxHp = maxHP;
    return this;
  }

  PlayerBuilder setCurHP(int curHP) {
    this._curHp = curHP;
    return this;
  }

  PlayerBuilder setDescription(String description) {
    this._description = description;
    return this;
  }

  PlayerBuilder setAbilityList(List<Ability> abilityList) {
    this._abilityList = abilityList;
    return this;
  }

  PlayerBuilder addAbility(Ability ability) {
    this._abilityList.add(ability);
    return this;
  }

  PlayerBuilder setWorkerList(List<Worker> workerList) {
    this._workerList = workerList;
    return this;
  }

  PlayerBuilder addWorker(Worker worker) {
    this._workerList.add(worker);
    return this;
  }

  PlayerBuilder setWorkerAbilityList(List<Ability> abilityList) {
    this._workerAbilityList = abilityList;
    return this;
  }

  PlayerBuilder addWorkerAbility(Ability ability) {
    this._workerAbilityList.add(ability);
    return this;
  }

  PlayerBuilder setStatusImpairment(List<StatusImpairment> statusImpairmentList) {
    this._statusImpairmentList = statusImpairmentList;
    return this;
  }

  PlayerBuilder addStatusImpairment(StatusImpairment statusImpairment) {
    this._statusImpairmentList.add(statusImpairment);
    return this;
  }

  PlayerBuilder setPlayerList(List<Player> playerList) {
    this._playerList = playerList;
    return this;
  }

  PlayerBuilder addPlayer(Player player) {
    this._playerList.add(player);
    return this;
  }

  PlayerBuilder save() {
    this._playerList.add(Player(
        name: this._name,
        imagePath: this._imagePath,
        level: this._level,
        description: this._description,
        maxHp: this._maxHp,
        curHp: this._curHp,
        abilityList: this._abilityList,
        statusImpairmentList: this._statusImpairmentList,
        workerList: this._workerList,
        workerAbilityList: this._workerAbilityList
    ));
    this.reset();
    return this;
  }

  Player build() {
    return Player(
      name: this._name,
      imagePath: this._imagePath,
      level: this._level,
      description: this._description,
      maxHp: this._maxHp,
      curHp: this._curHp,
      abilityList: this._abilityList,
      statusImpairmentList: this._statusImpairmentList,
      workerList: this._workerList,
      workerAbilityList: this._workerAbilityList
    );
  }

  List<Player> buildList() {
    return this._playerList;
  }
}
