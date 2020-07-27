import 'package:coka/core/models/Ability.dart';
import 'package:coka/core/models/StatusAilment.dart';
import 'package:coka/core/models/Worker.dart';

class Player {
  String name;
  int level;
  int maxHp, curHp;
  String image;
  String description;
  List<Ability> abilities;
  List<Ability> workerAbilities;
  List<StatusAilment> statusAilments;
  List<Worker> workers;

  Player({
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
