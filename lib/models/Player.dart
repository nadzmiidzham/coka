import 'package:coka/models/Ability.dart';
import 'package:coka/models/StatusImpairment.dart';
import 'package:coka/models/Worker.dart';

class Player {
  String name;
  String image;
  int level;
  int maxHp, curHp;
  String description;
  List<Ability> abilityList;
  List<Ability> workerAbilityList;
  List<StatusImpairment> statusImpairmentList;
  List<Worker> workerList;

  Player({
    this.name,
    this.level,
    this.maxHp,
    this.curHp,
    this.abilityList,
    this.workerAbilityList,
    this.image,
    this.description,
    this.statusImpairmentList,
    this.workerList,
  });
}
