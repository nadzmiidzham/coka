import 'package:coka/models/Ability.dart';
import 'package:coka/models/Player.dart';
import 'package:coka/modules/player-builder.dart';
import 'package:flutter/material.dart';

class PlayerProvider extends ChangeNotifier {
  PlayerBuilder _playerBuilder;

  PlayerProvider() {
    this._playerBuilder = PlayerBuilder();
  }

  Player get player { return this._playerBuilder.build(); }
  Player get initialPlayerStat { return this._playerBuilder.reset().build(); }

  List<int> get initialLevelValueList {
    return [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  }

  List<int> get initialAbilityValueList {
    return [1, 2, 3, 4, 5];
  }

  setPlayerLevel(int level) {
    this._playerBuilder.setLevel(level);
    notifyListeners();
  }

  setPlayerAbility(int index, Ability ability) {
    this._playerBuilder.setAbility(index, ability);
    notifyListeners();
  }

  addPlayer(Player player) {
    this._playerBuilder.reset()
        .setName(player.name)
        .setImagePath(player.imagePath)
        .setDescription(player.description)
        .setColor(player.color)
        .setAbilityList(player.abilityList)
        .setWorkerList(player.workerList)
        .setWorkerAbilityList(player.workerAbilityList)
        .save();
    notifyListeners();
  }

  savePlayer() {
    this._playerBuilder.save();
    notifyListeners();
  }

  randomizePlayer(String name, String imagePath, String description) {
    return this._playerBuilder.reset()
        .setName(name)
        .setImagePath(imagePath)
        .setDescription(description)
        .setColor(this._randomPlayerColor())
        .setAbilityList(this._randomPlayerAbility())
        .build();
  }

  PlayerColor _randomPlayerColor() {
    List<Player> tempPlayerList = this._playerBuilder.buildList();
    List<PlayerColor> tempColorList = [];

    for(int x=0 ; x<tempPlayerList.length ; x++) {
      tempColorList.add(tempPlayerList[x].color);
    }

    if(tempColorList.contains(PlayerColor.GREEN)) {
      return PlayerColor.GREEN;
    }
    if(tempColorList.contains(PlayerColor.GREEN)) {
      return PlayerColor.BLUE;
    }
    if(tempColorList.contains(PlayerColor.GREEN)) {
      return PlayerColor.RED;
    }
    if(tempColorList.contains(PlayerColor.GREEN)) {
      return PlayerColor.YELLOW;
    }

    return PlayerColor.GREEN;
  }

  // TODO: get a random ability values
  List<Ability> _randomPlayerAbility() {
    List<Ability> abilityList = [];

    for(int x=0 ; x<abilityList.length ; x++) {
      abilityList.add(Ability(
          name: 'Ability ${x + 1}',
          type: x,
          value: (x + 1),
          description: 'This is ability ${x + 1}',
          iconPath: ''
      ));
    }

    return abilityList;
  }
}
