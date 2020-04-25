import 'package:coka/models/AbilityModel.dart';
import 'package:coka/models/StatusAilmentModel.dart';
import 'package:flutter/cupertino.dart';

class CreatureModel {
  String image;
  String name;
  int xp;
  int maxHp, curHp;
  String description;
  List<AbilityModel> mainAbilities;
  List<AbilityModel> specialAbilities;
  List<StatusAilmentModel> statusAilments;

  CreatureModel({
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
