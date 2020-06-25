import 'package:coka/models/Ability.dart';
import 'package:coka/models/StatusImpairment.dart';

class Creature {
  String name;
  String image;
  int xp;
  int maxHp, curHp;
  String description;
  List<Ability> mainAbilityList;
  List<Ability> specialAbilityList;
  List<StatusImpairment> statusImpairmentList;

  Creature({
    this.image,
    this.name,
    this.xp,
    this.maxHp,
    this.curHp,
    this.description,
    this.mainAbilityList,
    this.specialAbilityList,
    this.statusImpairmentList
  });
}
