import 'package:coka/core/database/db.dart';
import 'package:coka/core/database/tables/creature.table.dart';
import 'package:moor/moor.dart';

part 'creature.dao.g.dart';

@UseDao(tables: [Creatures])
class CreatureDao extends DatabaseAccessor<DB> with _$CreatureDaoMixin {
  CreatureDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<Creature>> getAllCreatures() => select(creatures).get();
  Stream<List<Creature>> watchAllCreatures() => select(creatures).watch();
  Future<int> insertCreature(CreaturesCompanion creature) => into(creatures).insert(creature);
  Future updateCreature(CreaturesCompanion creature) => update(creatures).replace(creature);
  Future deleteCreature(CreaturesCompanion creature) => delete(creatures).delete(creature);
}
