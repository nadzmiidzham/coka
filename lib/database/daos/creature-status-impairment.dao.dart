import 'package:coka/database/db.dart';
import 'package:coka/database/tables/creature-status-impairment.table.dart';
import 'package:moor/moor.dart';

part 'creature-status-impairment.dao.g.dart';

@UseDao(tables: [CreatureStatusImpairments])
class CreatureStatusImpairmentDao extends DatabaseAccessor<DB> with _$CreatureStatusImpairmentDaoMixin {
  CreatureStatusImpairmentDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<CreatureStatusImpairment>> getAllCreatureStatusImpairments() => select(creatureStatusImpairments).get();
  Stream<List<CreatureStatusImpairment>> watchAllCreatureStatusImpairments() => select(creatureStatusImpairments).watch();
  Future<int> insertCreatureStatusImpairment(CreatureStatusImpairment creatureStatusImpairment) => into(creatureStatusImpairments).insert(creatureStatusImpairment);
  Future updateCreatureStatusImpairment(CreatureStatusImpairment creatureStatusImpairment) => update(creatureStatusImpairments).replace(creatureStatusImpairment);
  Future deleteCreatureStatusImpairment(CreatureStatusImpairment creatureStatusImpairment) => delete(creatureStatusImpairments).delete(creatureStatusImpairment);
}
