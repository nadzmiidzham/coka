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
  List<Player> get playerList { return this._playerBuilder.buildList(); }
  Player get initialPlayerStat { return this._playerBuilder.reset().build(); }

  List<int> get initialLevelValueList {
    return [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  }

  List<int> get initialAbilityValueList {
    return [1, 2, 3, 4, 5];
  }

  List<Player> get nameImageList {
    return [
      Player(
        name: "Calamis Earthshaker",
        imagePath: 'images/test.jpg',
        description: 'This is Player 1'
      ),
      Player(
        name: "Shesharra",
        imagePath: 'images/test.jpg',
        description: 'This is Player 2'
      ),
      Player(
        name: "Thralir Hillfeet",
        imagePath: 'images/test.jpg',
        description: 'This is Player 3'
      ),
      Player(
          name: "T'Lorra the Blessed",
          imagePath: 'images/test.jpg',
          description: 'This is Player 4'
      ),
    ];
  }

  resetPlayer() {
    this._playerBuilder.reset();
    notifyListeners();
  }

  setPlayerName(String name) {
    this._playerBuilder.setName(name);
    notifyListeners();
  }

  setPlayerLevel(int level) {
    this._playerBuilder.setLevel(level);
    notifyListeners();
  }

  setPlayerAbility(int index, Ability ability) {
    this._playerBuilder.setAbility(index, ability);
    notifyListeners();
  }

  selectPredefinedPlayer(Player player) {
    this._playerBuilder.setName(player.name)
        .setImagePath(player.imagePath)
        .setDescription(player.description);
    notifyListeners();
  }

  savePlayer() {
    this._playerBuilder.save();
    notifyListeners();
  }

  randomizePlayer() {
    Player player = this._playerBuilder.build();

    this._playerBuilder.reset()
        .setName(player.name)
        .setImagePath(player.imagePath)
        .setDescription(player.description)
        .setColor(this._randomPlayerColor())
        .setAbilityList(this._randomPlayerAbility());
    notifyListeners();
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

  // TODO: implement random ability function
  List<Ability> _randomPlayerAbility() {
    List<Ability> abilityList = this._playerBuilder.abilityList;

    for(int x=0 ; x<abilityList.length ; x++) {
      abilityList[x] = Ability(
        iconPath: 'images/test_icon.png',
        name: 'Ability ${x * 10}',
        type: x,
        value: (x * 1),
        description: 'This is ability ${x * 10}',
      );
    }

    return abilityList;
  }
}
