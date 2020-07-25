import 'package:coka/database/db.dart';
import 'package:coka/database/tables/ability.table.dart';
import 'package:moor/moor.dart';

part 'ability.dao.g.dart';

@UseDao(tables: [Abilities])
class AbilityDao extends DatabaseAccessor<DB> with _$AbilityDaoMixin {
  AbilityDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<Ability>> getAllAbilities() => select(abilities).get();
  Stream<List<Ability>> watchAllAbilities() => select(abilities).watch();
  Future<int> insertAbility(Ability ability) => into(abilities).insert(ability);
  Future updateAbility(Ability ability) => update(abilities).replace(ability);
  Future deleteAbility(Ability ability) => delete(abilities).delete(ability);
}
