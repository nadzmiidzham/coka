import 'package:coka/models/Ability.dart';
import 'package:coka/models/StatusImpairment.dart';
import 'package:coka/models/Worker.dart';

enum PlayerColor {
  GREEN,
  BLUE,
  RED,
  YELLOW
}

class Player {
  String name;
  String imagePath;
  int level;
  int maxHp, curHp;
  String description;
  PlayerColor color;
  List<Ability> abilityList;
  List<StatusImpairment> statusImpairmentList;
  List<Worker> workerList;
  List<Ability> workerAbilityList;

  Player({
    this.name,
    this.imagePath,
    this.level,
    this.maxHp,
    this.curHp,
    this.description,
    this.color,
    this.abilityList,
    this.statusImpairmentList,
    this.workerList,
    this.workerAbilityList,
  });
}
