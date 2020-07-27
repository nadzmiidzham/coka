import 'package:coka/core/database/db.dart';
import 'package:coka/core/database/tables/creature-ability.table.dart';
import 'package:moor/moor.dart';

part 'creature-ability.dao.g.dart';

@UseDao(tables: [CreatureAbilities])
class CreatureAbilityDao extends DatabaseAccessor<DB> with _$CreatureAbilityDaoMixin {
  CreatureAbilityDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<CreatureAbility>> getAllCreatureAbilities() => select(creatureAbilities).get();
  Stream<List<CreatureAbility>> watchAllCreatureAbilities() => select(creatureAbilities).watch();
  Future<int> insertCreatureAbility(CreatureAbilitiesCompanion creatureAbility) => into(creatureAbilities).insert(creatureAbility);
  Future updateCreatureAbility(CreatureAbilitiesCompanion creatureAbility) => update(creatureAbilities).replace(creatureAbility);
  Future deleteCreatureAbility(CreatureAbilitiesCompanion creatureAbility) => delete(creatureAbilities).delete(creatureAbility);
}
