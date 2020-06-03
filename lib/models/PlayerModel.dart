import 'package:coka/models/AbilityModel.dart';
import 'package:coka/models/StatusAilmentModel.dart';
import 'package:coka/models/WorkerModel.dart';
import 'package:flutter/cupertino.dart';

class PlayerModel {
  String name;
  int level;
  int maxHp, curHp;
  String image;
  String description;
  List<AbilityModel> abilities;
  List<AbilityModel> workerAbilities;
  List<StatusAilmentModel> statusAilments;
  List<WorkerModel> workers;

  PlayerModel({
    this.name,
    this.level,
    this.maxHp,
    this.curHp,
    this.abilities,
    this.workerAbilities,
    this.image,
    this.description,
    this.statusAilments,
    this.workers,
  });
}
