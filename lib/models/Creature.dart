import 'package:coka/models/Ability.dart';
import 'package:coka/models/StatusAilment.dart';
import 'package:flutter/cupertino.dart';

class Creature {
  Image image;
  String name;
  int xp;
  int maxHp, curHp;
  String description;
  List<Ability> mainAbilities;
  List<Ability> specialAbilities;
  List<StatusAilment> statusAilments;

  Creature({
    this.image,
    this.name,
    this.xp,
    this.maxHp,
    this.curHp,
    this.description,
    this.mainAbilities,
    this.specialAbilities,
    this.statusAilments
  });
}
