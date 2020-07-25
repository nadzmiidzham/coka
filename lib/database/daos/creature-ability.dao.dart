import 'package:coka/database/db.dart';
import 'package:coka/database/tables/creature-ability.table.dart';
import 'package:moor/moor.dart';

part 'creature-ability.dao.g.dart';

@UseDao(tables: [CreatureAbilities])
class CreatureAbilityDao extends DatabaseAccessor<DB> with _$CreatureAbilityDaoMixin {
  CreatureAbilityDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<CreatureAbility>> getAllCreatureAbilities() => select(creatureAbilities).get();
  Stream<List<CreatureAbility>> watchAllCreatureAbilities() => select(creatureAbilities).watch();
  Future<int> insertCreatureAbility(CreatureAbility creatureAbility) => into(creatureAbilities).insert(creatureAbility);
  Future updateCreatureAbility(CreatureAbility creatureAbility) => update(creatureAbilities).replace(creatureAbility);
  Future deleteCreatureAbility(CreatureAbility creatureAbility) => delete(creatureAbilities).delete(creatureAbility);
}
