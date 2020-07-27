import 'package:coka/core/models/Ability.dart';
import 'package:coka/core/models/StatusAilment.dart';

class Creature {
  String image;
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
